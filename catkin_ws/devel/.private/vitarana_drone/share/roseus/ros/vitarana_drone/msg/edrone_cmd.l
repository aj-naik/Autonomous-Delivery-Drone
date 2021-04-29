;; Auto-generated. Do not edit!


(when (boundp 'vitarana_drone::edrone_cmd)
  (if (not (find-package "VITARANA_DRONE"))
    (make-package "VITARANA_DRONE"))
  (shadow 'edrone_cmd (find-package "VITARANA_DRONE")))
(unless (find-package "VITARANA_DRONE::EDRONE_CMD")
  (make-package "VITARANA_DRONE::EDRONE_CMD"))

(in-package "ROS")
;;//! \htmlinclude edrone_cmd.msg.html


(defclass vitarana_drone::edrone_cmd
  :super ros::object
  :slots (_rcRoll _rcPitch _rcYaw _rcThrottle _aux1 _aux2 _aux3 _aux4 ))

(defmethod vitarana_drone::edrone_cmd
  (:init
   (&key
    ((:rcRoll __rcRoll) 0.0)
    ((:rcPitch __rcPitch) 0.0)
    ((:rcYaw __rcYaw) 0.0)
    ((:rcThrottle __rcThrottle) 0.0)
    ((:aux1 __aux1) 0.0)
    ((:aux2 __aux2) 0.0)
    ((:aux3 __aux3) 0.0)
    ((:aux4 __aux4) 0.0)
    )
   (send-super :init)
   (setq _rcRoll (float __rcRoll))
   (setq _rcPitch (float __rcPitch))
   (setq _rcYaw (float __rcYaw))
   (setq _rcThrottle (float __rcThrottle))
   (setq _aux1 (float __aux1))
   (setq _aux2 (float __aux2))
   (setq _aux3 (float __aux3))
   (setq _aux4 (float __aux4))
   self)
  (:rcRoll
   (&optional __rcRoll)
   (if __rcRoll (setq _rcRoll __rcRoll)) _rcRoll)
  (:rcPitch
   (&optional __rcPitch)
   (if __rcPitch (setq _rcPitch __rcPitch)) _rcPitch)
  (:rcYaw
   (&optional __rcYaw)
   (if __rcYaw (setq _rcYaw __rcYaw)) _rcYaw)
  (:rcThrottle
   (&optional __rcThrottle)
   (if __rcThrottle (setq _rcThrottle __rcThrottle)) _rcThrottle)
  (:aux1
   (&optional __aux1)
   (if __aux1 (setq _aux1 __aux1)) _aux1)
  (:aux2
   (&optional __aux2)
   (if __aux2 (setq _aux2 __aux2)) _aux2)
  (:aux3
   (&optional __aux3)
   (if __aux3 (setq _aux3 __aux3)) _aux3)
  (:aux4
   (&optional __aux4)
   (if __aux4 (setq _aux4 __aux4)) _aux4)
  (:serialization-length
   ()
   (+
    ;; float64 _rcRoll
    8
    ;; float64 _rcPitch
    8
    ;; float64 _rcYaw
    8
    ;; float64 _rcThrottle
    8
    ;; float64 _aux1
    8
    ;; float64 _aux2
    8
    ;; float64 _aux3
    8
    ;; float64 _aux4
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _rcRoll
       (sys::poke _rcRoll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rcPitch
       (sys::poke _rcPitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rcYaw
       (sys::poke _rcYaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rcThrottle
       (sys::poke _rcThrottle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _aux1
       (sys::poke _aux1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _aux2
       (sys::poke _aux2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _aux3
       (sys::poke _aux3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _aux4
       (sys::poke _aux4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _rcRoll
     (setq _rcRoll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rcPitch
     (setq _rcPitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rcYaw
     (setq _rcYaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rcThrottle
     (setq _rcThrottle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _aux1
     (setq _aux1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _aux2
     (setq _aux2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _aux3
     (setq _aux3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _aux4
     (setq _aux4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get vitarana_drone::edrone_cmd :md5sum-) "dc07470079f832efd9aebe0e4687ea6f")
(setf (get vitarana_drone::edrone_cmd :datatype-) "vitarana_drone/edrone_cmd")
(setf (get vitarana_drone::edrone_cmd :definition-)
      "float64 rcRoll
float64 rcPitch
float64 rcYaw
float64 rcThrottle
float64 aux1
float64 aux2
float64 aux3
float64 aux4

")



(provide :vitarana_drone/edrone_cmd "dc07470079f832efd9aebe0e4687ea6f")


