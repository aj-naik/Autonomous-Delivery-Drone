#!/usr/bin/env python

import rospy


def main():    
    
    # 1. Make the script a ROS Node.
    rospy.init_node('node_hello_ros', anonymous=True)

    # 2. Print info on console.
    rospy.loginfo("Hello World!")
    
    # 3. Keep the node alive till it is killed by the user.
    rospy.spin()


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass

