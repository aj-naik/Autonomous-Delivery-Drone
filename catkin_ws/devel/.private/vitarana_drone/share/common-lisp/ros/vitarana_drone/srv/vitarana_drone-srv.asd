
(cl:in-package :asdf)

(defsystem "vitarana_drone-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Gripper" :depends-on ("_package_Gripper"))
    (:file "_package_Gripper" :depends-on ("_package"))
  ))