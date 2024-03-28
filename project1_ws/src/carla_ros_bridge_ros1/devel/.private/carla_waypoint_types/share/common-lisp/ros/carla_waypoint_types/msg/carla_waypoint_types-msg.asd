
(cl:in-package :asdf)

(defsystem "carla_waypoint_types-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "CarlaWaypoint" :depends-on ("_package_CarlaWaypoint"))
    (:file "_package_CarlaWaypoint" :depends-on ("_package"))
  ))