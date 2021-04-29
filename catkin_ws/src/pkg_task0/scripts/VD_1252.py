#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose
import time
# Callback function for displaying data from subscribed topic
def pose_callback(msg):
            print(msg.theta)

# Function to move turtle in circle
def circle():
	  
	  # Initializing node
          rospy.init_node('turtle_revolve', anonymous=True)
          
          # Making a publisher variable for node for topic /turtle1/cmd_vel to set velocity values
          velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
          vel_msg = Twist()
      
          # Defining constant values like PI, speed, radius, and distance 
	  speed = 2
	  radius = 2
	  PI = 3.1415926535897
          distance = 2 * PI * radius

          time.sleep(1)

          # Setting values of velocities to publish
          vel_msg.linear.x = speed
          vel_msg.linear.y = 0
          vel_msg.linear.z = 0
   
          # Angular Velcoity set according to Classical Physics Formula linear_v= radius * angular_v
          vel_msg.angular.x = 0
          vel_msg.angular.y = 0
          vel_msg.angular.z = speed/radius
   
          # Initial time and distance values
          t0 = rospy.Time.now().to_sec()
          current_distance = 0
         
          # Loop to move turtle in circle; 0.5 added to distance to account for error	
          while (current_distance < distance):
                  velocity_publisher.publish(vel_msg)
    	          rospy.Subscriber("/turtle1/pose", Pose, pose_callback)
                  t1 = rospy.Time.now().to_sec()
                  current_distance = speed * (t1-t0)
	  
          vel_msg.linear.x = 0
          vel_msg.angular.z = 1
	  velocity_publisher.publish(vel_msg)

          

if __name__ == '__main__':
    try:
        circle()
    except rospy.ROSInterruptException: pass
