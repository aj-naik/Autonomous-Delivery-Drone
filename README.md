# Autonomous-Delivery-Done
Our implementation of an Autonomous delivery drone system. This project was created under the aegis of E-Yantra robotics competition and uses ROS and Gazebo simulator with various environments For testing. The drone uses PID controller for its operation.

# Working:
Attitude Controller sets the attitude of the drone (roll, pitch, yaw). 
Position Controller controls the drone: its location, where it goes etc. Both attitude and position controllers work in tandem to stablise and control the drone
Gripper Service activates the gripper attached to the bottom of drone when it detects a package underneath and grips the package for delivery
QR Detect script works just before gripper is activated and uses the camera attached to the bottom of drone to take a picture, scan qr code, extract the final co-ordinates and sends it to position controller which then updates its destination
