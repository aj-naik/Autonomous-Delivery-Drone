# Autonomous-Delivery-Done
Our implementation of an Vitarna Drone Autonomous delivery drone system. This project was created under the aegis of E-Yantra robotics competition and uses ROS and Gazebo simulator with various environments For testing. The drone uses PID controller for its operation.

# Requirements:
1. Ubuntu 18.04
2. Ros Melodic
3. Plot Juggler
4. Gazebo 

# Code Directory:
Vitarana_drone is the directory containing everything related to delivery drone. From gazebo models, environments to scripts.
The scripts for drone operation are in "catkin_ws/src/vitarana_drone/scripts"

# Code Explaination:
1. Attitude Controller sets the attitude of the drone (roll, pitch, yaw). 
2. Position Controller controls the drone: its location, where it goes etc. Both attitude and position controllers work in tandem by communicating through ROS messages to stablise and control the drone
3. Gripper Service activates the gripper attached to the bottom of drone when it detects a package underneath and grips the package for delivery
4. QR Detect script works just before gripper is activated and uses the camera attached to the bottom of drone to take a picture, scan qr code, extract the final co-ordinates and sends it to position controller which then updates its destination
5. Obstacles are sensed by various sensors like Lidar, Ultrasonic sensors. Bug algotrithm which we implemented makes use of sensor reading and efficiently avoids obstacles to deliver the package safely

# To Do:
1. Fine tune PID to make it stable. Currently drone is a bit wobbly.
2. Make drone faster by changing thrust, roll, pitch, yaw parameters and then balance pid equations so that new values don't destablise the drone 
3. Adjust obstacle detection/sensing distance for efficient obstacle avoidance in densely packed city area



