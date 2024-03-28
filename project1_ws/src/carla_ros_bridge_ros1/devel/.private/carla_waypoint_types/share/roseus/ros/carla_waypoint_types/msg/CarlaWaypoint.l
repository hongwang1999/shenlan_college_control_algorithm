;; Auto-generated. Do not edit!


(when (boundp 'carla_waypoint_types::CarlaWaypoint)
  (if (not (find-package "CARLA_WAYPOINT_TYPES"))
    (make-package "CARLA_WAYPOINT_TYPES"))
  (shadow 'CarlaWaypoint (find-package "CARLA_WAYPOINT_TYPES")))
(unless (find-package "CARLA_WAYPOINT_TYPES::CARLAWAYPOINT")
  (make-package "CARLA_WAYPOINT_TYPES::CARLAWAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude CarlaWaypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass carla_waypoint_types::CarlaWaypoint
  :super ros::object
  :slots (_road_id _section_id _lane_id _is_junction _pose ))

(defmethod carla_waypoint_types::CarlaWaypoint
  (:init
   (&key
    ((:road_id __road_id) 0)
    ((:section_id __section_id) 0)
    ((:lane_id __lane_id) 0)
    ((:is_junction __is_junction) nil)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _road_id (round __road_id))
   (setq _section_id (round __section_id))
   (setq _lane_id (round __lane_id))
   (setq _is_junction __is_junction)
   (setq _pose __pose)
   self)
  (:road_id
   (&optional __road_id)
   (if __road_id (setq _road_id __road_id)) _road_id)
  (:section_id
   (&optional __section_id)
   (if __section_id (setq _section_id __section_id)) _section_id)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:is_junction
   (&optional (__is_junction :null))
   (if (not (eq __is_junction :null)) (setq _is_junction __is_junction)) _is_junction)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; int32 _road_id
    4
    ;; int32 _section_id
    4
    ;; int32 _lane_id
    4
    ;; bool _is_junction
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _road_id
       (write-long _road_id s)
     ;; int32 _section_id
       (write-long _section_id s)
     ;; int32 _lane_id
       (write-long _lane_id s)
     ;; bool _is_junction
       (if _is_junction (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _road_id
     (setq _road_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _section_id
     (setq _section_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lane_id
     (setq _lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_junction
     (setq _is_junction (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get carla_waypoint_types::CarlaWaypoint :md5sum-) "99235d247406855b2598c797ec698ae4")
(setf (get carla_waypoint_types::CarlaWaypoint :datatype-) "carla_waypoint_types/CarlaWaypoint")
(setf (get carla_waypoint_types::CarlaWaypoint :definition-)
      "#
# Copyright (c) 2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#

int32 road_id
int32 section_id
int32 lane_id
bool is_junction
geometry_msgs/Pose pose
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :carla_waypoint_types/CarlaWaypoint "99235d247406855b2598c797ec698ae4")


