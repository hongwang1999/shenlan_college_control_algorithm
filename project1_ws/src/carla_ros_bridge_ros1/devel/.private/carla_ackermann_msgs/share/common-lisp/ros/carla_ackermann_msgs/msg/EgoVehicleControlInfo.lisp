; Auto-generated. Do not edit!


(cl:in-package carla_ackermann_msgs-msg)


;//! \htmlinclude EgoVehicleControlInfo.msg.html

(cl:defclass <EgoVehicleControlInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (restrictions
    :reader restrictions
    :initarg :restrictions
    :type carla_ackermann_msgs-msg:EgoVehicleControlMaxima
    :initform (cl:make-instance 'carla_ackermann_msgs-msg:EgoVehicleControlMaxima))
   (target
    :reader target
    :initarg :target
    :type carla_ackermann_msgs-msg:EgoVehicleControlTarget
    :initform (cl:make-instance 'carla_ackermann_msgs-msg:EgoVehicleControlTarget))
   (current
    :reader current
    :initarg :current
    :type carla_ackermann_msgs-msg:EgoVehicleControlCurrent
    :initform (cl:make-instance 'carla_ackermann_msgs-msg:EgoVehicleControlCurrent))
   (status
    :reader status
    :initarg :status
    :type carla_ackermann_msgs-msg:EgoVehicleControlStatus
    :initform (cl:make-instance 'carla_ackermann_msgs-msg:EgoVehicleControlStatus))
   (output
    :reader output
    :initarg :output
    :type carla_msgs-msg:CarlaEgoVehicleControl
    :initform (cl:make-instance 'carla_msgs-msg:CarlaEgoVehicleControl)))
)

(cl:defclass EgoVehicleControlInfo (<EgoVehicleControlInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EgoVehicleControlInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EgoVehicleControlInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_ackermann_msgs-msg:<EgoVehicleControlInfo> is deprecated: use carla_ackermann_msgs-msg:EgoVehicleControlInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <EgoVehicleControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:header-val is deprecated.  Use carla_ackermann_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'restrictions-val :lambda-list '(m))
(cl:defmethod restrictions-val ((m <EgoVehicleControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:restrictions-val is deprecated.  Use carla_ackermann_msgs-msg:restrictions instead.")
  (restrictions m))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <EgoVehicleControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:target-val is deprecated.  Use carla_ackermann_msgs-msg:target instead.")
  (target m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <EgoVehicleControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:current-val is deprecated.  Use carla_ackermann_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <EgoVehicleControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:status-val is deprecated.  Use carla_ackermann_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <EgoVehicleControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:output-val is deprecated.  Use carla_ackermann_msgs-msg:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EgoVehicleControlInfo>) ostream)
  "Serializes a message object of type '<EgoVehicleControlInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'restrictions) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'output) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EgoVehicleControlInfo>) istream)
  "Deserializes a message object of type '<EgoVehicleControlInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'restrictions) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'output) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EgoVehicleControlInfo>)))
  "Returns string type for a message object of type '<EgoVehicleControlInfo>"
  "carla_ackermann_msgs/EgoVehicleControlInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EgoVehicleControlInfo)))
  "Returns string type for a message object of type 'EgoVehicleControlInfo"
  "carla_ackermann_msgs/EgoVehicleControlInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EgoVehicleControlInfo>)))
  "Returns md5sum for a message object of type '<EgoVehicleControlInfo>"
  "dc2719c7e816ee0bd3fbbf8de4fec4db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EgoVehicleControlInfo)))
  "Returns md5sum for a message object of type 'EgoVehicleControlInfo"
  "dc2719c7e816ee0bd3fbbf8de4fec4db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EgoVehicleControlInfo>)))
  "Returns full string definition for message of type '<EgoVehicleControlInfo>"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents an info message of the ego vehicle~%~%std_msgs/Header header~%~%# the restrictions~%EgoVehicleControlMaxima restrictions~%~%# the target values~%EgoVehicleControlTarget target~%~%# the currently measured values~%EgoVehicleControlCurrent current~%~%# the current control status~%EgoVehicleControlStatus status~%~%# the current control output to CARLA~%carla_msgs/CarlaEgoVehicleControl output~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: carla_ackermann_msgs/EgoVehicleControlMaxima~%#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents some ego vehicle control maximal values~%~%# vehicle maximum values~%float32 max_steering_angle~%float32 max_speed~%float32 max_accel~%float32 max_decel~%float32 min_accel~%float32 max_pedal~%~%================================================================================~%MSG: carla_ackermann_msgs/EgoVehicleControlTarget~%#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents the target speed/accel values of the ego vehicle~%~%float32 steering_angle~%float32 speed~%float32 speed_abs~%float32 accel~%float32 jerk~%~%================================================================================~%MSG: carla_ackermann_msgs/EgoVehicleControlCurrent~%#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents the current time/speed/accel values of the vehicle used by the controller~%~%float32 time_sec~%float32 speed~%float32 speed_abs~%float32 accel~%================================================================================~%MSG: carla_ackermann_msgs/EgoVehicleControlStatus~%#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents the control status variables of the ego vehicle control~%~%# the current control status~%string status~%~%# speed controller~%uint8   speed_control_activation_count~%float32 speed_control_accel_delta~%float32 speed_control_accel_target~%~%# acceleration controller~%float32 accel_control_pedal_delta~%float32 accel_control_pedal_target~%~%# borders for lay off pedal~%float32 brake_upper_border~%float32 throttle_lower_border~%~%================================================================================~%MSG: carla_msgs/CarlaEgoVehicleControl~%#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents a vehicle control message sent to CARLA simulator~%~%std_msgs/Header header~%~%# The CARLA vehicle control data~%~%# 0. <= throttle <= 1.~%float32 throttle~%~%# -1. <= steer <= 1.~%float32 steer~%~%# 0. <= brake <= 1.~%float32 brake~%~%# hand_brake 0 or 1~%bool hand_brake~%~%# reverse 0 or 1~%bool reverse~%~%# gear~%int32 gear~%~%# manual gear shift~%bool manual_gear_shift~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EgoVehicleControlInfo)))
  "Returns full string definition for message of type 'EgoVehicleControlInfo"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents an info message of the ego vehicle~%~%std_msgs/Header header~%~%# the restrictions~%EgoVehicleControlMaxima restrictions~%~%# the target values~%EgoVehicleControlTarget target~%~%# the currently measured values~%EgoVehicleControlCurrent current~%~%# the current control status~%EgoVehicleControlStatus status~%~%# the current control output to CARLA~%carla_msgs/CarlaEgoVehicleControl output~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: carla_ackermann_msgs/EgoVehicleControlMaxima~%#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents some ego vehicle control maximal values~%~%# vehicle maximum values~%float32 max_steering_angle~%float32 max_speed~%float32 max_accel~%float32 max_decel~%float32 min_accel~%float32 max_pedal~%~%================================================================================~%MSG: carla_ackermann_msgs/EgoVehicleControlTarget~%#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents the target speed/accel values of the ego vehicle~%~%float32 steering_angle~%float32 speed~%float32 speed_abs~%float32 accel~%float32 jerk~%~%================================================================================~%MSG: carla_ackermann_msgs/EgoVehicleControlCurrent~%#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents the current time/speed/accel values of the vehicle used by the controller~%~%float32 time_sec~%float32 speed~%float32 speed_abs~%float32 accel~%================================================================================~%MSG: carla_ackermann_msgs/EgoVehicleControlStatus~%#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents the control status variables of the ego vehicle control~%~%# the current control status~%string status~%~%# speed controller~%uint8   speed_control_activation_count~%float32 speed_control_accel_delta~%float32 speed_control_accel_target~%~%# acceleration controller~%float32 accel_control_pedal_delta~%float32 accel_control_pedal_target~%~%# borders for lay off pedal~%float32 brake_upper_border~%float32 throttle_lower_border~%~%================================================================================~%MSG: carla_msgs/CarlaEgoVehicleControl~%#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents a vehicle control message sent to CARLA simulator~%~%std_msgs/Header header~%~%# The CARLA vehicle control data~%~%# 0. <= throttle <= 1.~%float32 throttle~%~%# -1. <= steer <= 1.~%float32 steer~%~%# 0. <= brake <= 1.~%float32 brake~%~%# hand_brake 0 or 1~%bool hand_brake~%~%# reverse 0 or 1~%bool reverse~%~%# gear~%int32 gear~%~%# manual gear shift~%bool manual_gear_shift~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EgoVehicleControlInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'restrictions))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EgoVehicleControlInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'EgoVehicleControlInfo
    (cl:cons ':header (header msg))
    (cl:cons ':restrictions (restrictions msg))
    (cl:cons ':target (target msg))
    (cl:cons ':current (current msg))
    (cl:cons ':status (status msg))
    (cl:cons ':output (output msg))
))
