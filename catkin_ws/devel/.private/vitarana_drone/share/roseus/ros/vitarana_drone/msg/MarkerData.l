;; Auto-generated. Do not edit!


(when (boundp 'vitarana_drone::MarkerData)
  (if (not (find-package "VITARANA_DRONE"))
    (make-package "VITARANA_DRONE"))
  (shadow 'MarkerData (find-package "VITARANA_DRONE")))
(unless (find-package "VITARANA_DRONE::MARKERDATA")
  (make-package "VITARANA_DRONE::MARKERDATA"))

(in-package "ROS")
;;//! \htmlinclude MarkerData.msg.html


(defclass vitarana_drone::MarkerData
  :super ros::object
  :slots (_marker_id _err_x_m _err_y_m ))

(defmethod vitarana_drone::MarkerData
  (:init
   (&key
    ((:marker_id __marker_id) 0)
    ((:err_x_m __err_x_m) 0.0)
    ((:err_y_m __err_y_m) 0.0)
    )
   (send-super :init)
   (setq _marker_id (round __marker_id))
   (setq _err_x_m (float __err_x_m))
   (setq _err_y_m (float __err_y_m))
   self)
  (:marker_id
   (&optional __marker_id)
   (if __marker_id (setq _marker_id __marker_id)) _marker_id)
  (:err_x_m
   (&optional __err_x_m)
   (if __err_x_m (setq _err_x_m __err_x_m)) _err_x_m)
  (:err_y_m
   (&optional __err_y_m)
   (if __err_y_m (setq _err_y_m __err_y_m)) _err_y_m)
  (:serialization-length
   ()
   (+
    ;; int8 _marker_id
    1
    ;; float64 _err_x_m
    8
    ;; float64 _err_y_m
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _marker_id
       (write-byte _marker_id s)
     ;; float64 _err_x_m
       (sys::poke _err_x_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_y_m
       (sys::poke _err_y_m (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _marker_id
     (setq _marker_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _marker_id 127) (setq _marker_id (- _marker_id 256)))
   ;; float64 _err_x_m
     (setq _err_x_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_y_m
     (setq _err_y_m (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get vitarana_drone::MarkerData :md5sum-) "07f88596d90f2c67e8f564a8e85f1ff2")
(setf (get vitarana_drone::MarkerData :datatype-) "vitarana_drone/MarkerData")
(setf (get vitarana_drone::MarkerData :definition-)
      "int8 marker_id
float64 err_x_m
float64 err_y_m
")



(provide :vitarana_drone/MarkerData "07f88596d90f2c67e8f564a8e85f1ff2")


