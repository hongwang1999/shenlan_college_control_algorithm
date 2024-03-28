
(cl:in-package :asdf)

(defsystem "carla_waypoint_types-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :carla_waypoint_types-msg
               :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "GetActorWaypoint" :depends-on ("_package_GetActorWaypoint"))
    (:file "_package_GetActorWaypoint" :depends-on ("_package"))
    (:file "GetWaypoint" :depends-on ("_package_GetWaypoint"))
    (:file "_package_GetWaypoint" :depends-on ("_package"))
  ))