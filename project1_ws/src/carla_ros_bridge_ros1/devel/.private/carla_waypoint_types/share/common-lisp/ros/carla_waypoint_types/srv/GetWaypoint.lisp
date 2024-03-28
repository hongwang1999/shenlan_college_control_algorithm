; Auto-generated. Do not edit!


(cl:in-package carla_waypoint_types-srv)


;//! \htmlinclude GetWaypoint-request.msg.html

(cl:defclass <GetWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((location
    :reader location
    :initarg :location
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass GetWaypoint-request (<GetWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_waypoint_types-srv:<GetWaypoint-request> is deprecated: use carla_waypoint_types-srv:GetWaypoint-request instead.")))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <GetWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_waypoint_types-srv:location-val is deprecated.  Use carla_waypoint_types-srv:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWaypoint-request>) ostream)
  "Serializes a message object of type '<GetWaypoint-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWaypoint-request>) istream)
  "Deserializes a message object of type '<GetWaypoint-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWaypoint-request>)))
  "Returns string type for a service object of type '<GetWaypoint-request>"
  "carla_waypoint_types/GetWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoint-request)))
  "Returns string type for a service object of type 'GetWaypoint-request"
  "carla_waypoint_types/GetWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWaypoint-request>)))
  "Returns md5sum for a message object of type '<GetWaypoint-request>"
  "1a17497db7dec5ca2bffcbf2d6bc770d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWaypoint-request)))
  "Returns md5sum for a message object of type 'GetWaypoint-request"
  "1a17497db7dec5ca2bffcbf2d6bc770d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWaypoint-request>)))
  "Returns full string definition for message of type '<GetWaypoint-request>"
  (cl:format cl:nil "#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%geometry_msgs/Point location~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWaypoint-request)))
  "Returns full string definition for message of type 'GetWaypoint-request"
  (cl:format cl:nil "#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%geometry_msgs/Point location~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWaypoint-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWaypoint-request
    (cl:cons ':location (location msg))
))
;//! \htmlinclude GetWaypoint-response.msg.html

(cl:defclass <GetWaypoint-response> (roslisp-msg-protocol:ros-message)
  ((waypoint
    :reader waypoint
    :initarg :waypoint
    :type carla_waypoint_types-msg:CarlaWaypoint
    :initform (cl:make-instance 'carla_waypoint_types-msg:CarlaWaypoint)))
)

(cl:defclass GetWaypoint-response (<GetWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_waypoint_types-srv:<GetWaypoint-response> is deprecated: use carla_waypoint_types-srv:GetWaypoint-response instead.")))

(cl:ensure-generic-function 'waypoint-val :lambda-list '(m))
(cl:defmethod waypoint-val ((m <GetWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_waypoint_types-srv:waypoint-val is deprecated.  Use carla_waypoint_types-srv:waypoint instead.")
  (waypoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWaypoint-response>) ostream)
  "Serializes a message object of type '<GetWaypoint-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWaypoint-response>) istream)
  "Deserializes a message object of type '<GetWaypoint-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWaypoint-response>)))
  "Returns string type for a service object of type '<GetWaypoint-response>"
  "carla_waypoint_types/GetWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoint-response)))
  "Returns string type for a service object of type 'GetWaypoint-response"
  "carla_waypoint_types/GetWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWaypoint-response>)))
  "Returns md5sum for a message object of type '<GetWaypoint-response>"
  "1a17497db7dec5ca2bffcbf2d6bc770d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWaypoint-response)))
  "Returns md5sum for a message object of type 'GetWaypoint-response"
  "1a17497db7dec5ca2bffcbf2d6bc770d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWaypoint-response>)))
  "Returns full string definition for message of type '<GetWaypoint-response>"
  (cl:format cl:nil "carla_waypoint_types/CarlaWaypoint waypoint~%~%================================================================================~%MSG: carla_waypoint_types/CarlaWaypoint~%#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%int32 road_id~%int32 section_id~%int32 lane_id~%bool is_junction~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWaypoint-response)))
  "Returns full string definition for message of type 'GetWaypoint-response"
  (cl:format cl:nil "carla_waypoint_types/CarlaWaypoint waypoint~%~%================================================================================~%MSG: carla_waypoint_types/CarlaWaypoint~%#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%int32 road_id~%int32 section_id~%int32 lane_id~%bool is_junction~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWaypoint-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWaypoint-response
    (cl:cons ':waypoint (waypoint msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWaypoint)))
  'GetWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWaypoint)))
  'GetWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWaypoint)))
  "Returns string type for a service object of type '<GetWaypoint>"
  "carla_waypoint_types/GetWaypoint")