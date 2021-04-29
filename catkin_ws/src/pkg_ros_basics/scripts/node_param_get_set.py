#!/usr/bin/env python

import rospy


def main():    
    
    # 1. Make the script a ROS Node.
    rospy.init_node('node_param_get_set', anonymous=True)

    # 2. Read from Parameter Server
    rospy.loginfo("Reading from Parameter Server.")

    
    param_config_my = rospy.get_param('details')    # Get all the parameters inside 'details'

    # Store the parameters in variables
    first_name = param_config_my['name']['first']
    last_name = param_config_my['name']['last']
    address = param_config_my['contact']['address']
    phone = param_config_my['contact']['phone']

    # Print the parameters
    rospy.loginfo(">> First Name: {}".format(first_name))
    rospy.loginfo(">> Last Name: {}".format(last_name))
    rospy.loginfo(">> Address: {}".format(address))
    rospy.loginfo(">> Phone: {}".format(phone))

    # 3. Modify the Phone Number 

    rospy.set_param('/details/contact/phone', 55555)        # Modify only Phone Number in Parameter Server
    new_phone = rospy.get_param('/details/contact/phone')   # Get only Phone Number from Parameter Server
    rospy.loginfo(">> New Phone: {}".format(new_phone))     # Print the new Phone Number
    
    


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass

