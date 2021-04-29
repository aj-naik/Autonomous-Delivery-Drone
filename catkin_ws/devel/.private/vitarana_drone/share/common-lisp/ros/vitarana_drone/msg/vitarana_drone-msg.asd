
(cl:in-package :asdf)

(defsystem "vitarana_drone-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MarkerData" :depends-on ("_package_MarkerData"))
    (:file "_package_MarkerData" :depends-on ("_package"))
    (:file "edrone_cmd" :depends-on ("_package_edrone_cmd"))
    (:file "_package_edrone_cmd" :depends-on ("_package"))
    (:file "prop_speed" :depends-on ("_package_prop_speed"))
    (:file "_package_prop_speed" :depends-on ("_package"))
  ))