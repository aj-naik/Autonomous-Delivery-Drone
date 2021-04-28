#!/usr/bin/env python
from vitarana_drone.msg import edrone_cmd
from vitarana_drone.srv import Gripper
from pid_tune.msg import PidTune
from sensor_msgs.msg import NavSatFix
from std_msgs.msg import Float32, String
from sensor_msgs.msg import Imu, LaserScan
import rospy
import time
import rosservice


class position_control():

    # Function to initialise parameters and call subscribers
    def __init__(self):
        rospy.init_node("position_controler", anonymous=True)

        self.coordinates = [0, 0, 0]
        self.drone_acceleration_linear = [0, 0, 0]
        self.setpoint_list = [
            [18.9990965928,72.0000664814,19.75]
            # [19.0009248718, 71.9998318945, 25.16],
            # [19.0007046575, 71.9998955286, 25.1599967919]
        ]  # List of setpoints to visit

        self.destination = [18.9990965928,72.0000664814,19.75]

        self.kp = [310, 100]
        self.kd = [1800, 500]
        self.ki = [30, 0]

        self.alt_error = 0

        self.errorP = 0
        self.prevP = 0
        self.itermP = 0

        self.errorR = 0
        self.prevR = 0
        self.itermR = 0

        self.status = 0
        self.i = 0  # counter
        self.flag = 0
        self.setpoint_cmd = edrone_cmd()
        self.setpoint_cmd.rcRoll = 1500
        self.setpoint_cmd.rcPitch = 1500
        self.setpoint_cmd.rcYaw = 1500
        self.setpoint_cmd.rcThrottle = 1500
        self.setpoint_cmd.aux1 = 0
        self.setpoint_cmd.aux2 = 0
        self.setpoint_cmd.aux3 = 0
        self.setpoint_cmd.aux4 = 0

        self.ranges_top = [100, 100, 100, 100, 100, 100]
        self.intensities_top = [100, 100, 100, 100, 100, 100]

        self.ranges_bottom = [100]
        self.intensities_bottom = [100]
        self.setpoint_pub = rospy.Publisher('/drone_command',
                                            edrone_cmd,
                                            queue_size=1)
        self.zerror = rospy.Publisher('/z_error', Float32, queue_size=1)
        self.xerror = rospy.Publisher('/x_error', Float32, queue_size=1)
        self.yerror = rospy.Publisher('/y_error', Float32, queue_size=1)
        rospy.Subscriber('/edrone/gps', NavSatFix, self.gps_assign)
        rospy.Subscriber('/edrone/imu/data', Imu, self.imu_callback)
        rospy.Subscriber('/edrone/gripper_check', String, self.gripper_check)
        rospy.Subscriber('/qr_data', String, self.qr_calc)
        rospy.Subscriber('/edrone/range_finder_top', LaserScan,
                         self.calc_range_top)
        rospy.Subscriber('/edrone/range_finder_bottom', LaserScan,
                         self.calc_range_bottom)
        # rospy.Subscriber('/pid_tuning_roll', PidTune, self.roll_set_pid)
        # rospy.Subscriber('/pid_tuning_pitch', PidTune, self.pitch_set_pid)

    def pitch_set_pid(self, pitch):
        self.kp[0] = pitch.Kp
        self.ki[0] = pitch.Ki
        self.kd[0] = pitch.Kd
        print('pitch_set_pid callback')

    def roll_set_pid(self, roll):
        self.kp[1] = roll.Kp
        self.ki[1] = roll.Ki
        self.kd[1] = roll.Kd
        print('pitch_set_pid callback')

    def calc_range_top(self, msg):
        self.ranges_top = msg.ranges
        self.intensities_top = msg.intensities

    def calc_range_bottom(self, msg):
        self.ranges_bottom = msg.ranges
        self.intensities_bottom = msg.intensities

    def qr_calc(self, msg):
        data = msg.data
        li = data.split(',')
        self.destination = [float(li[0]), float(li[1]), float(li[2])]

    # Function to get data from imu
    def imu_callback(self, msg):
        self.drone_acceleration_linear[0] = msg.linear_acceleration.x
        self.drone_acceleration_linear[1] = msg.linear_acceleration.y
        self.drone_acceleration_linear[2] = msg.linear_acceleration.z

    # Function to get data from gps
    def gps_assign(self, msg):
        self.coordinates[0] = msg.latitude
        self.coordinates[1] = msg.longitude
        self.coordinates[2] = msg.altitude
        # print('coordinates input ')
        # print(self.coordinates)

    def gripper_check(self, msg):
        self.status = msg.data
        rospy.wait_for_service('/edrone/activate_gripper')
        try:
            toggle_grip = rospy.ServiceProxy('/edrone/activate_gripper',
                                             Gripper)
            if (self.status):
                resp = toggle_grip(True)
                # print(resp)
        except rospy.ServiceException as e:
            print("Service call failed: ", e)

    def at_dest(self):
        if abs(self.coordinates[0] -
               self.destination[0]) == 0.00004517 and abs(
                   self.coordinates[1] -
                   self.destination[1]) == 0.000048756 and abs(
                       self.coordinates[2] - self.destination[2]) == 0.2:
            return True
        else:
            return False

    # Function to move drone using tuned PID algorithm
    def position_calc(self):
        print(self.coordinates)
        goal = self.destination  # current value of set point
        if not self.at_dest():
            if self.ranges_top[3] <= 10:
                goal = [
                    self.coordinates[0] + 1, self.coordinates[1] + 1,
                    self.coordinates[2]
                ]
            else:
                goal = self.setpoint_list[self.i]
                # if self.destination[1] != self.coordinates[1]:
                #     if self.destination[1] < self.coordinates[1]:
                #         goal[1] = self.coordinates[1] - 0.01
                #     elif self.destination[1] > self.coordinates[1]:
                #         goal[1] = self.coordinates[1] + 0.01
                # elif self.destination[0] != self.coordinates[0]:
                #     if self.destination[0] < self.coordinates[0]:
                #         goal[0] = self.coordinates[0] - 0.01
                #     elif self.destination[0] > self.coordinates[0]:
                #         goal[0] = self.coordinates[0] + 0.01

        self.alt_error = goal[2] - self.coordinates[2]  # alttitude error

        # calculating required value of roll to reach setpoint
        self.errorR = (goal[1] - self.coordinates[1]) * 1000000
        self.itermR += self.errorR * self.ki[1]
        self.setpoint_cmd.rcRoll = 1500 + self.kp[
            1] * self.errorR + self.itermR + self.kd[1] * (self.errorR -
                                                           self.prevR)
        self.prevR = self.errorR

        # calculating required value of pitch to reach setpoint
        self.errorP = (goal[0] - self.coordinates[0]) * 1000000
        self.itermP += self.errorP * self.ki[0]
        self.setpoint_cmd.rcPitch = 1500 + self.kp[
            0] * self.errorP + self.itermP + self.kd[0] * (self.errorP -
                                                           self.prevP)
        self.prevP = self.errorP

        if self.setpoint_cmd.rcPitch > 2000:
            self.setpoint_cmd.rcPitch = 2000
        if self.setpoint_cmd.rcRoll > 2000:
            self.setpoint_cmd.rcRoll = 2000
        if self.setpoint_cmd.rcYaw > 2000:
            self.setpoint_cmd.rcYaw = 2000
        if self.setpoint_cmd.rcThrottle > 2000:
            self.setpoint_cmd.rcThrottle = 2000

        if self.setpoint_cmd.rcPitch < 1000:
            self.setpoint_cmd.rcPitch = 1000
        if self.setpoint_cmd.rcRoll < 1000:
            self.setpoint_cmd.rcRoll = 1000
        if self.setpoint_cmd.rcYaw < 1000:
            self.setpoint_cmd.rcYaw = 1000
        if self.setpoint_cmd.rcThrottle < 1000:
            self.setpoint_cmd.rcThrottle = 1000

        # publishing values of alttitude error and values of ritch roll and throttle
        self.setpoint_pub.publish(self.setpoint_cmd)
        self.zerror.publish(self.alt_error)
        self.xerror.publish(self.errorP)
        self.yerror.publish(self.errorR)

        # incrementing to the next set point
        if abs(self.alt_error) < 0.2 and abs(
                self.errorP / 1000000) < 0.000004517 and abs(
                    self.errorR / 1000000) < 0.000004875:
            if self.i < len(
                    self.setpoint_list) - 1:  # Iterating through Setpoint list
                self.i += 1
                print('next point')
                print(self.coordinates)


if __name__ == '__main__':
    pc = position_control()
    r = rospy.Rate(16)
    print('>> Started position control module!')
    while not rospy.is_shutdown():
        pc.position_calc()
        r.sleep()