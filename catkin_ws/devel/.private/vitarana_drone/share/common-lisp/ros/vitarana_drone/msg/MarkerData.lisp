; Auto-generated. Do not edit!


(cl:in-package vitarana_drone-msg)


;//! \htmlinclude MarkerData.msg.html

(cl:defclass <MarkerData> (roslisp-msg-protocol:ros-message)
  ((marker_id
    :reader marker_id
    :initarg :marker_id
    :type cl:fixnum
    :initform 0)
   (err_x_m
    :reader err_x_m
    :initarg :err_x_m
    :type cl:float
    :initform 0.0)
   (err_y_m
    :reader err_y_m
    :initarg :err_y_m
    :type cl:float
    :initform 0.0))
)

(cl:defclass MarkerData (<MarkerData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MarkerData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MarkerData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vitarana_drone-msg:<MarkerData> is deprecated: use vitarana_drone-msg:MarkerData instead.")))

(cl:ensure-generic-function 'marker_id-val :lambda-list '(m))
(cl:defmethod marker_id-val ((m <MarkerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:marker_id-val is deprecated.  Use vitarana_drone-msg:marker_id instead.")
  (marker_id m))

(cl:ensure-generic-function 'err_x_m-val :lambda-list '(m))
(cl:defmethod err_x_m-val ((m <MarkerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:err_x_m-val is deprecated.  Use vitarana_drone-msg:err_x_m instead.")
  (err_x_m m))

(cl:ensure-generic-function 'err_y_m-val :lambda-list '(m))
(cl:defmethod err_y_m-val ((m <MarkerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vitarana_drone-msg:err_y_m-val is deprecated.  Use vitarana_drone-msg:err_y_m instead.")
  (err_y_m m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MarkerData>) ostream)
  "Serializes a message object of type '<MarkerData>"
  (cl:let* ((signed (cl:slot-value msg 'marker_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'err_x_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'err_y_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MarkerData>) istream)
  "Deserializes a message object of type '<MarkerData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'marker_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'err_x_m) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'err_y_m) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MarkerData>)))
  "Returns string type for a message object of type '<MarkerData>"
  "vitarana_drone/MarkerData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MarkerData)))
  "Returns string type for a message object of type 'MarkerData"
  "vitarana_drone/MarkerData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MarkerData>)))
  "Returns md5sum for a message object of type '<MarkerData>"
  "07f88596d90f2c67e8f564a8e85f1ff2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MarkerData)))
  "Returns md5sum for a message object of type 'MarkerData"
  "07f88596d90f2c67e8f564a8e85f1ff2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MarkerData>)))
  "Returns full string definition for message of type '<MarkerData>"
  (cl:format cl:nil "int8 marker_id~%float64 err_x_m~%float64 err_y_m~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MarkerData)))
  "Returns full string definition for message of type 'MarkerData"
  (cl:format cl:nil "int8 marker_id~%float64 err_x_m~%float64 err_y_m~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MarkerData>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MarkerData>))
  "Converts a ROS message object to a list"
  (cl:list 'MarkerData
    (cl:cons ':marker_id (marker_id msg))
    (cl:cons ':err_x_m (err_x_m msg))
    (cl:cons ':err_y_m (err_y_m msg))
))
