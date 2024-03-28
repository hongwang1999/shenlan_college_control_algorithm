;; Auto-generated. Do not edit!


(when (boundp 'carla_waypoint_types::GetActorWaypoint)
  (if (not (find-package "CARLA_WAYPOINT_TYPES"))
    (make-package "CARLA_WAYPOINT_TYPES"))
  (shadow 'GetActorWaypoint (find-package "CARLA_WAYPOINT_TYPES")))
(unless (find-package "CARLA_WAYPOINT_TYPES::GETACTORWAYPOINT")
  (make-package "CARLA_WAYPOINT_TYPES::GETACTORWAYPOINT"))
(unless (find-package "CARLA_WAYPOINT_TYPES::GETACTORWAYPOINTREQUEST")
  (make-package "CARLA_WAYPOINT_TYPES::GETACTORWAYPOINTREQUEST"))
(unless (find-package "CARLA_WAYPOINT_TYPES::GETACTORWAYPOINTRESPONSE")
  (make-package "CARLA_WAYPOINT_TYPES::GETACTORWAYPOINTRESPONSE"))

(in-package "ROS")





(defclass carla_waypoint_types::GetActorWaypointRequest
  :super ros::object
  :slots (_id ))

(defmethod carla_waypoint_types::GetActorWaypointRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass carla_waypoint_types::GetActorWaypointResponse
  :super ros::object
  :slots (_waypoint ))

(defmethod carla_waypoint_types::GetActorWaypointResponse
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

(defclass carla_waypoint_types::GetActorWaypoint
  :super ros::object
  :slots ())

(setf (get carla_waypoint_types::GetActorWaypoint :md5sum-) "bf5553e309a0529c4c0d999d00a8b367")
(setf (get carla_waypoint_types::GetActorWaypoint :datatype-) "carla_waypoint_types/GetActorWaypoint")
(setf (get carla_waypoint_types::GetActorWaypoint :request) carla_waypoint_types::GetActorWaypointRequest)
(setf (get carla_waypoint_types::GetActorWaypoint :response) carla_waypoint_types::GetActorWaypointResponse)

(defmethod carla_waypoint_types::GetActorWaypointRequest
  (:response () (instance carla_waypoint_types::GetActorWaypointResponse :init)))

(setf (get carla_waypoint_types::GetActorWaypointRequest :md5sum-) "bf5553e309a0529c4c0d999d00a8b367")
(setf (get carla_waypoint_types::GetActorWaypointRequest :datatype-) "carla_waypoint_types/GetActorWaypointRequest")
(setf (get carla_waypoint_types::GetActorWaypointRequest :definition-)
      "#
# Copyright (c) 2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
uint32 id
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

(setf (get carla_waypoint_types::GetActorWaypointResponse :md5sum-) "bf5553e309a0529c4c0d999d00a8b367")
(setf (get carla_waypoint_types::GetActorWaypointResponse :datatype-) "carla_waypoint_types/GetActorWaypointResponse")
(setf (get carla_waypoint_types::GetActorWaypointResponse :definition-)
      "#
# Copyright (c) 2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
uint32 id
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



(provide :carla_waypoint_types/GetActorWaypoint "bf5553e309a0529c4c0d999d00a8b367")


