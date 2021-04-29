; Auto-generated. Do not edit!


(cl:in-package vitarana_drone-msg)


;//! \htmlinclude prop_speed.msg.html

(cl:defclass <prop_speed> (roslisp-msg-protocol:ros-message)
  ((prop1
    :reader prop1
    :initarg :prop1
    :type cl:float
    :initform 0.0)
   (prop2
    :reader prop2
    :initarg :prop2
    :type cl:float
    :initform 0.0)
   (prop3
    :reader prop3
    :initarg :prop3
    :type cl:float
    :initform 0.0)
   (prop4
    :reader prop4
    :initarg :prop4
    :type cl:float
    :initform 0.0))
)

(cl:defclass prop_speed (<prop_speed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <prop_speed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'prop_speed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vitarana_drone-msg:<prop_speed> is deprecated: use vitarana_drone-msg:prop_speed instead.")))

(cl:ensure-generic-function 'prop1-val :lambda-list '(m))
(cl:defmethod prop1-val ((m <prop_speed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:prop1-val is deprecated.  Use vitarana_drone-msg:prop1 instead.")
  (prop1 m))

(cl:ensure-generic-function 'prop2-val :lambda-list '(m))
(cl:defmethod prop2-val ((m <prop_speed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:prop2-val is deprecated.  Use vitarana_drone-msg:prop2 instead.")
  (prop2 m))

(cl:ensure-generic-function 'prop3-val :lambda-list '(m))
(cl:defmethod prop3-val ((m <prop_speed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:prop3-val is deprecated.  Use vitarana_drone-msg:prop3 instead.")
  (prop3 m))

(cl:ensure-generic-function 'prop4-val :lambda-list '(m))
(cl:defmethod prop4-val ((m <prop_speed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:prop4-val is deprecated.  Use vitarana_drone-msg:prop4 instead.")
  (prop4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <prop_speed>) ostream)
  "Serializes a message object of type '<prop_speed>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prop1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prop2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prop3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'prop4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <prop_speed>) istream)
  "Deserializes a message object of type '<prop_speed>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prop1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prop2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prop3) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prop4) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<prop_speed>)))
  "Returns string type for a message object of type '<prop_speed>"
  "vitarana_drone/prop_speed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'prop_speed)))
  "Returns string type for a message object of type 'prop_speed"
  "vitarana_drone/prop_speed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<prop_speed>)))
  "Returns md5sum for a message object of type '<prop_speed>"
  "22246cf2b6038087c0c429c875fc8ffa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'prop_speed)))
  "Returns md5sum for a message object of type 'prop_speed"
  "22246cf2b6038087c0c429c875fc8ffa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<prop_speed>)))
  "Returns full string definition for message of type '<prop_speed>"
  (cl:format cl:nil "float64 prop1~%float64 prop2~%float64 prop3~%float64 prop4 ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'prop_speed)))
  "Returns full string definition for message of type 'prop_speed"
  (cl:format cl:nil "float64 prop1~%float64 prop2~%float64 prop3~%float64 prop4 ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <prop_speed>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <prop_speed>))
  "Converts a ROS message object to a list"
  (cl:list 'prop_speed
    (cl:cons ':prop1 (prop1 msg))
    (cl:cons ':prop2 (prop2 msg))
    (cl:cons ':prop3 (prop3 msg))
    (cl:cons ':prop4 (prop4 msg))
))
