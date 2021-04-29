;; Auto-generated. Do not edit!


(when (boundp 'vitarana_drone::Gripper)
  (if (not (find-package "VITARANA_DRONE"))
    (make-package "VITARANA_DRONE"))
  (shadow 'Gripper (find-package "VITARANA_DRONE")))
(unless (find-package "VITARANA_DRONE::GRIPPER")
  (make-package "VITARANA_DRONE::GRIPPER"))
(unless (find-package "VITARANA_DRONE::GRIPPERREQUEST")
  (make-package "VITARANA_DRONE::GRIPPERREQUEST"))
(unless (find-package "VITARANA_DRONE::GRIPPERRESPONSE")
  (make-package "VITARANA_DRONE::GRIPPERRESPONSE"))

(in-package "ROS")





(defclass vitarana_drone::GripperRequest
  :super ros::object
  :slots (_activate_gripper ))

(defmethod vitarana_drone::GripperRequest
  (:init
   (&key
    ((:activate_gripper __activate_gripper) nil)
    )
   (send-super :init)
   (setq _activate_gripper __activate_gripper)
   self)
  (:activate_gripper
   (&optional __activate_gripper)
   (if __activate_gripper (setq _activate_gripper __activate_gripper)) _activate_gripper)
  (:serialization-length
   ()
   (+
    ;; bool _activate_gripper
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _activate_gripper
       (if _activate_gripper (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _activate_gripper
     (setq _activate_gripper (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass vitarana_drone::GripperResponse
  :super ros::object
  :slots (_result ))

(defmethod vitarana_drone::GripperResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass vitarana_drone::Gripper
  :super ros::object
  :slots ())

(setf (get vitarana_drone::Gripper :md5sum-) "b6ef517238124133d1f6964a49370da8")
(setf (get vitarana_drone::Gripper :datatype-) "vitarana_drone/Gripper")
(setf (get vitarana_drone::Gripper :request) vitarana_drone::GripperRequest)
(setf (get vitarana_drone::Gripper :response) vitarana_drone::GripperResponse)

(defmethod vitarana_drone::GripperRequest
  (:response () (instance vitarana_drone::GripperResponse :init)))

(setf (get vitarana_drone::GripperRequest :md5sum-) "b6ef517238124133d1f6964a49370da8")
(setf (get vitarana_drone::GripperRequest :datatype-) "vitarana_drone/GripperRequest")
(setf (get vitarana_drone::GripperRequest :definition-)
      "bool activate_gripper
---
bool result
")

(setf (get vitarana_drone::GripperResponse :md5sum-) "b6ef517238124133d1f6964a49370da8")
(setf (get vitarana_drone::GripperResponse :datatype-) "vitarana_drone/GripperResponse")
(setf (get vitarana_drone::GripperResponse :definition-)
      "bool activate_gripper
---
bool result
")



(provide :vitarana_drone/Gripper "b6ef517238124133d1f6964a49370da8")


