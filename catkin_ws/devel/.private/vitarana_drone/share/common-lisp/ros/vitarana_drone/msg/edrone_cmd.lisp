; Auto-generated. Do not edit!


(cl:in-package vitarana_drone-msg)


;//! \htmlinclude edrone_cmd.msg.html

(cl:defclass <edrone_cmd> (roslisp-msg-protocol:ros-message)
  ((rcRoll
    :reader rcRoll
    :initarg :rcRoll
    :type cl:float
    :initform 0.0)
   (rcPitch
    :reader rcPitch
    :initarg :rcPitch
    :type cl:float
    :initform 0.0)
   (rcYaw
    :reader rcYaw
    :initarg :rcYaw
    :type cl:float
    :initform 0.0)
   (rcThrottle
    :reader rcThrottle
    :initarg :rcThrottle
    :type cl:float
    :initform 0.0)
   (aux1
    :reader aux1
    :initarg :aux1
    :type cl:float
    :initform 0.0)
   (aux2
    :reader aux2
    :initarg :aux2
    :type cl:float
    :initform 0.0)
   (aux3
    :reader aux3
    :initarg :aux3
    :type cl:float
    :initform 0.0)
   (aux4
    :reader aux4
    :initarg :aux4
    :type cl:float
    :initform 0.0))
)

(cl:defclass edrone_cmd (<edrone_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <edrone_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'edrone_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vitarana_drone-msg:<edrone_cmd> is deprecated: use vitarana_drone-msg:edrone_cmd instead.")))

(cl:ensure-generic-function 'rcRoll-val :lambda-list '(m))
(cl:defmethod rcRoll-val ((m <edrone_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:rcRoll-val is deprecated.  Use vitarana_drone-msg:rcRoll instead.")
  (rcRoll m))

(cl:ensure-generic-function 'rcPitch-val :lambda-list '(m))
(cl:defmethod rcPitch-val ((m <edrone_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:rcPitch-val is deprecated.  Use vitarana_drone-msg:rcPitch instead.")
  (rcPitch m))

(cl:ensure-generic-function 'rcYaw-val :lambda-list '(m))
(cl:defmethod rcYaw-val ((m <edrone_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:rcYaw-val is deprecated.  Use vitarana_drone-msg:rcYaw instead.")
  (rcYaw m))

(cl:ensure-generic-function 'rcThrottle-val :lambda-list '(m))
(cl:defmethod rcThrottle-val ((m <edrone_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:rcThrottle-val is deprecated.  Use vitarana_drone-msg:rcThrottle instead.")
  (rcThrottle m))

(cl:ensure-generic-function 'aux1-val :lambda-list '(m))
(cl:defmethod aux1-val ((m <edrone_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:aux1-val is deprecated.  Use vitarana_drone-msg:aux1 instead.")
  (aux1 m))

(cl:ensure-generic-function 'aux2-val :lambda-list '(m))
(cl:defmethod aux2-val ((m <edrone_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:aux2-val is deprecated.  Use vitarana_drone-msg:aux2 instead.")
  (aux2 m))

(cl:ensure-generic-function 'aux3-val :lambda-list '(m))
(cl:defmethod aux3-val ((m <edrone_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:aux3-val is deprecated.  Use vitarana_drone-msg:aux3 instead.")
  (aux3 m))

(cl:ensure-generic-function 'aux4-val :lambda-list '(m))
(cl:defmethod aux4-val ((m <edrone_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:aux4-val is deprecated.  Use vitarana_drone-msg:aux4 instead.")
  (aux4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <edrone_cmd>) ostream)
  "Serializes a message object of type '<edrone_cmd>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rcRoll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rcPitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rcYaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rcThrottle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'aux1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'aux2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'aux3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'aux4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <edrone_cmd>) istream)
  "Deserializes a message object of type '<edrone_cmd>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rcRoll) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rcPitch) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rcYaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rcThrottle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aux1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aux2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aux3) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aux4) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<edrone_cmd>)))
  "Returns string type for a message object of type '<edrone_cmd>"
  "vitarana_drone/edrone_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'edrone_cmd)))
  "Returns string type for a message object of type 'edrone_cmd"
  "vitarana_drone/edrone_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<edrone_cmd>)))
  "Returns md5sum for a message object of type '<edrone_cmd>"
  "dc07470079f832efd9aebe0e4687ea6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'edrone_cmd)))
  "Returns md5sum for a message object of type 'edrone_cmd"
  "dc07470079f832efd9aebe0e4687ea6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<edrone_cmd>)))
  "Returns full string definition for message of type '<edrone_cmd>"
  (cl:format cl:nil "float64 rcRoll~%float64 rcPitch~%float64 rcYaw~%float64 rcThrottle~%float64 aux1~%float64 aux2~%float64 aux3~%float64 aux4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'edrone_cmd)))
  "Returns full string definition for message of type 'edrone_cmd"
  (cl:format cl:nil "float64 rcRoll~%float64 rcPitch~%float64 rcYaw~%float64 rcThrottle~%float64 aux1~%float64 aux2~%float64 aux3~%float64 aux4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <edrone_cmd>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <edrone_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'edrone_cmd
    (cl:cons ':rcRoll (rcRoll msg))
    (cl:cons ':rcPitch (rcPitch msg))
    (cl:cons ':rcYaw (rcYaw msg))
    (cl:cons ':rcThrottle (rcThrottle msg))
    (cl:cons ':aux1 (aux1 msg))
    (cl:cons ':aux2 (aux2 msg))
    (cl:cons ':aux3 (aux3 msg))
    (cl:cons ':aux4 (aux4 msg))
))
