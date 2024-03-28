; Auto-generated. Do not edit!


(cl:in-package carla_waypoint_types-srv)


;//! \htmlinclude GetActorWaypoint-request.msg.html

(cl:defclass <GetActorWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass GetActorWaypoint-request (<GetActorWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetActorWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetActorWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_waypoint_types-srv:<GetActorWaypoint-request> is deprecated: use carla_waypoint_types-srv:GetActorWaypoint-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetActorWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_waypoint_types-srv:id-val is deprecated.  Use carla_waypoint_types-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetActorWaypoint-request>) ostream)
  "Serializes a message object of type '<GetActorWaypoint-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetActorWaypoint-request>) istream)
  "Deserializes a message object of type '<GetActorWaypoint-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetActorWaypoint-request>)))
  "Returns string type for a service object of type '<GetActorWaypoint-request>"
  "carla_waypoint_types/GetActorWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetActorWaypoint-request)))
  "Returns string type for a service object of type 'GetActorWaypoint-request"
  "carla_waypoint_types/GetActorWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetActorWaypoint-request>)))
  "Returns md5sum for a message object of type '<GetActorWaypoint-request>"
  "bf5553e309a0529c4c0d999d00a8b367")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetActorWaypoint-request)))
  "Returns md5sum for a message object of type 'GetActorWaypoint-request"
  "bf5553e309a0529c4c0d999d00a8b367")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetActorWaypoint-request>)))
  "Returns full string definition for message of type '<GetActorWaypoint-request>"
  (cl:format cl:nil "#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetActorWaypoint-request)))
  "Returns full string definition for message of type 'GetActorWaypoint-request"
  (cl:format cl:nil "#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%uint32 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetActorWaypoint-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetActorWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetActorWaypoint-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude GetActorWaypoint-response.msg.html

(cl:defclass <GetActorWaypoint-response> (roslisp-msg-protocol:ros-message)
  ((waypoint
    :reader waypoint
    :initarg :waypoint
    :type carla_waypoint_types-msg:CarlaWaypoint
    :initform (cl:make-instance 'carla_waypoint_types-msg:CarlaWaypoint)))
)

(cl:defclass GetActorWaypoint-response (<GetActorWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetActorWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetActorWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_waypoint_types-srv:<GetActorWaypoint-response> is deprecated: use carla_waypoint_types-srv:GetActorWaypoint-response instead.")))

(cl:ensure-generic-function 'waypoint-val :lambda-list '(m))
(cl:defmethod waypoint-val ((m <GetActorWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_waypoint_types-srv:waypoint-val is deprecated.  Use carla_waypoint_types-srv:waypoint instead.")
  (waypoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetActorWaypoint-response>) ostream)
  "Serializes a message object of type '<GetActorWaypoint-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetActorWaypoint-response>) istream)
  "Deserializes a message object of type '<GetActorWaypoint-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetActorWaypoint-response>)))
  "Returns string type for a service object of type '<GetActorWaypoint-response>"
  "carla_waypoint_types/GetActorWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetActorWaypoint-response)))
  "Returns string type for a service object of type 'GetActorWaypoint-response"
  "carla_waypoint_types/GetActorWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetActorWaypoint-response>)))
  "Returns md5sum for a message object of type '<GetActorWaypoint-response>"
  "bf5553e309a0529c4c0d999d00a8b367")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetActorWaypoint-response)))
  "Returns md5sum for a message object of type 'GetActorWaypoint-response"
  "bf5553e309a0529c4c0d999d00a8b367")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetActorWaypoint-response>)))
  "Returns full string definition for message of type '<GetActorWaypoint-response>"
  (cl:format cl:nil "carla_waypoint_types/CarlaWaypoint waypoint~%~%================================================================================~%MSG: carla_waypoint_types/CarlaWaypoint~%#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%int32 road_id~%int32 section_id~%int32 lane_id~%bool is_junction~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetActorWaypoint-response)))
  "Returns full string definition for message of type 'GetActorWaypoint-response"
  (cl:format cl:nil "carla_waypoint_types/CarlaWaypoint waypoint~%~%================================================================================~%MSG: carla_waypoint_types/CarlaWaypoint~%#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%int32 road_id~%int32 section_id~%int32 lane_id~%bool is_junction~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetActorWaypoint-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetActorWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetActorWaypoint-response
    (cl:cons ':waypoint (waypoint msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetActorWaypoint)))
  'GetActorWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetActorWaypoint)))
  'GetActorWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetActorWaypoint)))
  "Returns string type for a service object of type '<GetActorWaypoint>"
  "carla_waypoint_types/GetActorWaypoint")