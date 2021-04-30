# Autonomous-Delivery-Done
Our implementation of an Autonomous delivery drone system. This project was created under the aegis of E-Yantra robotics competition and uses ROS and Gazebo simulator with various environments For testing. The drone uses PID controller for its operation.

# Code Directory:
Vitarana_drone is the directory containing everything related to delivery drone. From gazebo models, environments to scripts.
The scripts for drone operation are in "catkin_ws/src/vitarana_drone/scripts"

# Working:
1. Attitude Controller sets the attitude of the drone (roll, pitch, yaw). 
2. Position Controller controls the drone: its location, where it goes etc. Both attitude and position controllers work in tandem to stablise and control the drone
3. Gripper Service activates the gripper attached to the bottom of drone when it detects a package underneath and grips the package for delivery
4. QR Detect script works just before gripper is activated and uses the camera attached to the bottom of drone to take a picture, scan qr code, extract the final co-ordinates and sends it to position controller which then updates its destination



