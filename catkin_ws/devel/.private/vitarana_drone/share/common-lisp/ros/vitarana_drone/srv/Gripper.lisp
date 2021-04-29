; Auto-generated. Do not edit!


(cl:in-package vitarana_drone-srv)


;//! \htmlinclude Gripper-request.msg.html

(cl:defclass <Gripper-request> (roslisp-msg-protocol:ros-message)
  ((activate_gripper
    :reader activate_gripper
    :initarg :activate_gripper
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Gripper-request (<Gripper-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gripper-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gripper-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vitarana_drone-srv:<Gripper-request> is deprecated: use vitarana_drone-srv:Gripper-request instead.")))

(cl:ensure-generic-function 'activate_gripper-val :lambda-list '(m))
(cl:defmethod activate_gripper-val ((m <Gripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-srv:activate_gripper-val is deprecated.  Use vitarana_drone-srv:activate_gripper instead.")
  (activate_gripper m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gripper-request>) ostream)
  "Serializes a message object of type '<Gripper-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'activate_gripper) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gripper-request>) istream)
  "Deserializes a message object of type '<Gripper-request>"
    (cl:setf (cl:slot-value msg 'activate_gripper) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gripper-request>)))
  "Returns string type for a service object of type '<Gripper-request>"
  "vitarana_drone/GripperRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gripper-request)))
  "Returns string type for a service object of type 'Gripper-request"
  "vitarana_drone/GripperRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gripper-request>)))
  "Returns md5sum for a message object of type '<Gripper-request>"
  "b6ef517238124133d1f6964a49370da8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gripper-request)))
  "Returns md5sum for a message object of type 'Gripper-request"
  "b6ef517238124133d1f6964a49370da8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gripper-request>)))
  "Returns full string definition for message of type '<Gripper-request>"
  (cl:format cl:nil "bool activate_gripper~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gripper-request)))
  "Returns full string definition for message of type 'Gripper-request"
  (cl:format cl:nil "bool activate_gripper~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gripper-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gripper-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Gripper-request
    (cl:cons ':activate_gripper (activate_gripper msg))
))
;//! \htmlinclude Gripper-response.msg.html

(cl:defclass <Gripper-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Gripper-response (<Gripper-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gripper-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gripper-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vitarana_drone-srv:<Gripper-response> is deprecated: use vitarana_drone-srv:Gripper-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Gripper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-srv:result-val is deprecated.  Use vitarana_drone-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gripper-response>) ostream)
  "Serializes a message object of type '<Gripper-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gripper-response>) istream)
  "Deserializes a message object of type '<Gripper-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gripper-response>)))
  "Returns string type for a service object of type '<Gripper-response>"
  "vitarana_drone/GripperResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gripper-response)))
  "Returns string type for a service object of type 'Gripper-response"
  "vitarana_drone/GripperResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gripper-response>)))
  "Returns md5sum for a message object of type '<Gripper-response>"
  "b6ef517238124133d1f6964a49370da8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gripper-response)))
  "Returns md5sum for a message object of type 'Gripper-response"
  "b6ef517238124133d1f6964a49370da8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gripper-response>)))
  "Returns full string definition for message of type '<Gripper-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gripper-response)))
  "Returns full string definition for message of type 'Gripper-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gripper-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gripper-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Gripper-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Gripper)))
  'Gripper-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Gripper)))
  'Gripper-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gripper)))
  "Returns string type for a service object of type '<Gripper>"
  "vitarana_drone/Gripper")