#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

def pose_callback(msg):
            print(msg.theta)

def circle():
          rospy.init_node('turtle_revolve', anonymous=True)
    
          velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
          vel_msg = Twist()

          vel_msg.linear.x = 5
          vel_msg.linear.y = 0
          vel_msg.linear.z = 0

          vel_msg.angular.x = 0
          vel_msg.angular.y = 0
          vel_msg.angular.z = 5

          while True:
                  velocity_publisher.publish(vel_msg)
    	          rospy.Subscriber("/turtle1/pose", Pose, pose_callback)

          rospy.spin()

if __name__ == '__main__':
    try:
        circle()
    except rospy.ROSInterruptException: pass
