;; Auto-generated. Do not edit!


(when (boundp 'vitarana_drone::prop_speed)
  (if (not (find-package "VITARANA_DRONE"))
    (make-package "VITARANA_DRONE"))
  (shadow 'prop_speed (find-package "VITARANA_DRONE")))
(unless (find-package "VITARANA_DRONE::PROP_SPEED")
  (make-package "VITARANA_DRONE::PROP_SPEED"))

(in-package "ROS")
;;//! \htmlinclude prop_speed.msg.html


(defclass vitarana_drone::prop_speed
  :super ros::object
  :slots (_prop1 _prop2 _prop3 _prop4 ))

(defmethod vitarana_drone::prop_speed
  (:init
   (&key
    ((:prop1 __prop1) 0.0)
    ((:prop2 __prop2) 0.0)
    ((:prop3 __prop3) 0.0)
    ((:prop4 __prop4) 0.0)
    )
   (send-super :init)
   (setq _prop1 (float __prop1))
   (setq _prop2 (float __prop2))
   (setq _prop3 (float __prop3))
   (setq _prop4 (float __prop4))
   self)
  (:prop1
   (&optional __prop1)
   (if __prop1 (setq _prop1 __prop1)) _prop1)
  (:prop2
   (&optional __prop2)
   (if __prop2 (setq _prop2 __prop2)) _prop2)
  (:prop3
   (&optional __prop3)
   (if __prop3 (setq _prop3 __prop3)) _prop3)
  (:prop4
   (&optional __prop4)
   (if __prop4 (setq _prop4 __prop4)) _prop4)
  (:serialization-length
   ()
   (+
    ;; float64 _prop1
    8
    ;; float64 _prop2
    8
    ;; float64 _prop3
    8
    ;; float64 _prop4
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _prop1
       (sys::poke _prop1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _prop2
       (sys::poke _prop2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _prop3
       (sys::poke _prop3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _prop4
       (sys::poke _prop4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _prop1
     (setq _prop1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _prop2
     (setq _prop2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _prop3
     (setq _prop3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _prop4
     (setq _prop4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get vitarana_drone::prop_speed :md5sum-) "22246cf2b6038087c0c429c875fc8ffa")
(setf (get vitarana_drone::prop_speed :datatype-) "vitarana_drone/prop_speed")
(setf (get vitarana_drone::prop_speed :definition-)
      "float64 prop1
float64 prop2
float64 prop3
float64 prop4 
")



(provide :vitarana_drone/prop_speed "22246cf2b6038087c0c429c875fc8ffa")


