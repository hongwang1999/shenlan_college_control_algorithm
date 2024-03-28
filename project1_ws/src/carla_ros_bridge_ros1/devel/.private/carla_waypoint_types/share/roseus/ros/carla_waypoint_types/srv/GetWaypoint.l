;; Auto-generated. Do not edit!


(when (boundp 'carla_waypoint_types::GetWaypoint)
  (if (not (find-package "CARLA_WAYPOINT_TYPES"))
    (make-package "CARLA_WAYPOINT_TYPES"))
  (shadow 'GetWaypoint (find-package "CARLA_WAYPOINT_TYPES")))
(unless (find-package "CARLA_WAYPOINT_TYPES::GETWAYPOINT")
  (make-package "CARLA_WAYPOINT_TYPES::GETWAYPOINT"))
(unless (find-package "CARLA_WAYPOINT_TYPES::GETWAYPOINTREQUEST")
  (make-package "CARLA_WAYPOINT_TYPES::GETWAYPOINTREQUEST"))
(unless (find-package "CARLA_WAYPOINT_TYPES::GETWAYPOINTRESPONSE")
  (make-package "CARLA_WAYPOINT_TYPES::GETWAYPOINTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass carla_waypoint_types::GetWaypointRequest
  :super ros::object
  :slots (_location ))

(defmethod carla_waypoint_types::GetWaypointRequest
  (:init
   (&key
    ((:location __location) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _location __location)
   self)
  (:location
   (&rest __location)
   (if (keywordp (car __location))
       (send* _location __location)
     (progn
       (if __location (setq _location (car __location)))
       _location)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _location
    (send _location :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _location
       (send _location :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _location
     (send _location :deserialize buf ptr-) (incf ptr- (send _location :serialization-length))
   ;;
   self)
  )

(defclass carla_waypoint_types::GetWaypointResponse
  :super ros::object
  :slots (_waypoint ))

(defmethod carla_waypoint_types::GetWaypointResponse
  (:init
   (&key
    ((:waypoint __waypoint) (instance carla_waypoint_types::CarlaWaypoint :init))
    )
   (send-super :init)
   (setq _waypoint __waypoint)
   self)
  (:waypoint
   (&rest __waypoint)
   (if (keywordp (car __waypoint))
       (send* _waypoint __waypoint)
     (progn
       (if __waypoint (setq _waypoint (car __waypoint)))
       _waypoint)))
  (:serialization-length
   ()
   (+
    ;; carla_waypoint_types/CarlaWaypoint _waypoint
    (send _waypoint :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; carla_waypoint_types/CarlaWaypoint _waypoint
       (send _waypoint :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; carla_waypoint_types/CarlaWaypoint _waypoint
     (send _waypoint :deserialize buf ptr-) (incf ptr- (send _waypoint :serialization-length))
   ;;
   self)
  )

(defclass carla_waypoint_types::GetWaypoint
  :super ros::object
  :slots ())

(setf (get carla_waypoint_types::GetWaypoint :md5sum-) "1a17497db7dec5ca2bffcbf2d6bc770d")
(setf (get carla_waypoint_types::GetWaypoint :datatype-) "carla_waypoint_types/GetWaypoint")
(setf (get carla_waypoint_types::GetWaypoint :request) carla_waypoint_types::GetWaypointRequest)
(setf (get carla_waypoint_types::GetWaypoint :response) carla_waypoint_types::GetWaypointResponse)

(defmethod carla_waypoint_types::GetWaypointRequest
  (:response () (instance carla_waypoint_types::GetWaypointResponse :init)))

(setf (get carla_waypoint_types::GetWaypointRequest :md5sum-) "1a17497db7dec5ca2bffcbf2d6bc770d")
(setf (get carla_waypoint_types::GetWaypointRequest :datatype-) "carla_waypoint_types/GetWaypointRequest")
(setf (get carla_waypoint_types::GetWaypointRequest :definition-)
      "#
# Copyright (c) 2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
geometry_msgs/Point location

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
carla_waypoint_types/CarlaWaypoint waypoint

================================================================================
MSG: carla_waypoint_types/CarlaWaypoint
#
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

(setf (get carla_waypoint_types::GetWaypointResponse :md5sum-) "1a17497db7dec5ca2bffcbf2d6bc770d")
(setf (get carla_waypoint_types::GetWaypointResponse :datatype-) "carla_waypoint_types/GetWaypointResponse")
(setf (get carla_waypoint_types::GetWaypointResponse :definition-)
      "#
# Copyright (c) 2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
geometry_msgs/Point location

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
carla_waypoint_types/CarlaWaypoint waypoint

================================================================================
MSG: carla_waypoint_types/CarlaWaypoint
#
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



(provide :carla_waypoint_types/GetWaypoint "1a17497db7dec5ca2bffcbf2d6bc770d")


