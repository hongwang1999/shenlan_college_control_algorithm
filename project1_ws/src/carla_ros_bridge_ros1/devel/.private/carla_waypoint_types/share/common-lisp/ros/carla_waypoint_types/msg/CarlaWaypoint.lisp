; Auto-generated. Do not edit!


(cl:in-package carla_waypoint_types-msg)


;//! \htmlinclude CarlaWaypoint.msg.html

(cl:defclass <CarlaWaypoint> (roslisp-msg-protocol:ros-message)
  ((road_id
    :reader road_id
    :initarg :road_id
    :type cl:integer
    :initform 0)
   (section_id
    :reader section_id
    :initarg :section_id
    :type cl:integer
    :initform 0)
   (lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:integer
    :initform 0)
   (is_junction
    :reader is_junction
    :initarg :is_junction
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass CarlaWaypoint (<CarlaWaypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaWaypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaWaypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_waypoint_types-msg:<CarlaWaypoint> is deprecated: use carla_waypoint_types-msg:CarlaWaypoint instead.")))

(cl:ensure-generic-function 'road_id-val :lambda-list '(m))
(cl:defmethod road_id-val ((m <CarlaWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_waypoint_types-msg:road_id-val is deprecated.  Use carla_waypoint_types-msg:road_id instead.")
  (road_id m))

(cl:ensure-generic-function 'section_id-val :lambda-list '(m))
(cl:defmethod section_id-val ((m <CarlaWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_waypoint_types-msg:section_id-val is deprecated.  Use carla_waypoint_types-msg:section_id instead.")
  (section_id m))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <CarlaWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_waypoint_types-msg:lane_id-val is deprecated.  Use carla_waypoint_types-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'is_junction-val :lambda-list '(m))
(cl:defmethod is_junction-val ((m <CarlaWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_waypoint_types-msg:is_junction-val is deprecated.  Use carla_waypoint_types-msg:is_junction instead.")
  (is_junction m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <CarlaWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_waypoint_types-msg:pose-val is deprecated.  Use carla_waypoint_types-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaWaypoint>) ostream)
  "Serializes a message object of type '<CarlaWaypoint>"
  (cl:let* ((signed (cl:slot-value msg 'road_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'section_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lane_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_junction) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaWaypoint>) istream)
  "Deserializes a message object of type '<CarlaWaypoint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'road_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'section_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_junction) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaWaypoint>)))
  "Returns string type for a message object of type '<CarlaWaypoint>"
  "carla_waypoint_types/CarlaWaypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaWaypoint)))
  "Returns string type for a message object of type 'CarlaWaypoint"
  "carla_waypoint_types/CarlaWaypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaWaypoint>)))
  "Returns md5sum for a message object of type '<CarlaWaypoint>"
  "99235d247406855b2598c797ec698ae4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaWaypoint)))
  "Returns md5sum for a message object of type 'CarlaWaypoint"
  "99235d247406855b2598c797ec698ae4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaWaypoint>)))
  "Returns full string definition for message of type '<CarlaWaypoint>"
  (cl:format cl:nil "#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%int32 road_id~%int32 section_id~%int32 lane_id~%bool is_junction~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaWaypoint)))
  "Returns full string definition for message of type 'CarlaWaypoint"
  (cl:format cl:nil "#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%~%int32 road_id~%int32 section_id~%int32 lane_id~%bool is_junction~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaWaypoint>))
  (cl:+ 0
     4
     4
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaWaypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaWaypoint
    (cl:cons ':road_id (road_id msg))
    (cl:cons ':section_id (section_id msg))
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':is_junction (is_junction msg))
    (cl:cons ':pose (pose msg))
))
