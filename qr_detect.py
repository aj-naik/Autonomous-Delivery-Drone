#!/usr/bin/env python
'''
This is a boiler plate script that contains an example on how to subscribe a rostopic containing camera frames 
and store it into an OpenCV image to use it further for image processing tasks.
Use this code snippet in your code or you can also continue adding your code in the same file
'''

from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from pyzbar.pyzbar import decode
from std_msgs.msg import String
import cv2
import numpy as np
import rospy
# from PIL import Image


class image_proc():

    # Initialise everything
    def __init__(self):
        rospy.init_node('barcode_test')  # Initialise rosnode
        self.image_sub = rospy.Subscriber(
            "/edrone/camera/image_raw", Image,
            self.image_callback)  # Subscribing to the camera topic
        self.img = np.empty(
            [])  # This will contain your image frame from camera
        self.bridge = CvBridge()
        self.data = '10000,10000,10000'
        self.qrdata = rospy.Publisher('/qr_data', String, queue_size=1)

    # Callback function of camera topic
    def image_callback(self, data):
        try:
            self.img = self.bridge.imgmsg_to_cv2(
                data, "bgr8")  # Converting the image to OpenCV standard image
            cv2.imshow("AB.jpg", self.img)
            cv2.waitKey(1)
            b = cv2.imwrite('Drone.png', self.img)

            c = cv2.imread("Drone.png")
            d = decode(c)
            for i in d:
                print('QR CODE DETECTED')
                self.data = str(i.data.decode("utf-8"))
                print('EXTRACTED' + self.data)
            # print("QR", b)
            self.qrdata.publish(self.data)

        except CvBridgeError as e:
            print(e)
        return


if __name__ == '__main__':
    image_proc_obj = image_proc()
    rospy.spin()