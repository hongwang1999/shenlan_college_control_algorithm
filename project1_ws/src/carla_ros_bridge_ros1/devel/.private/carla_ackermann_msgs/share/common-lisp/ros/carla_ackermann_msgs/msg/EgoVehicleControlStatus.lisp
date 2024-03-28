; Auto-generated. Do not edit!


(cl:in-package carla_ackermann_msgs-msg)


;//! \htmlinclude EgoVehicleControlStatus.msg.html

(cl:defclass <EgoVehicleControlStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (speed_control_activation_count
    :reader speed_control_activation_count
    :initarg :speed_control_activation_count
    :type cl:fixnum
    :initform 0)
   (speed_control_accel_delta
    :reader speed_control_accel_delta
    :initarg :speed_control_accel_delta
    :type cl:float
    :initform 0.0)
   (speed_control_accel_target
    :reader speed_control_accel_target
    :initarg :speed_control_accel_target
    :type cl:float
    :initform 0.0)
   (accel_control_pedal_delta
    :reader accel_control_pedal_delta
    :initarg :accel_control_pedal_delta
    :type cl:float
    :initform 0.0)
   (accel_control_pedal_target
    :reader accel_control_pedal_target
    :initarg :accel_control_pedal_target
    :type cl:float
    :initform 0.0)
   (brake_upper_border
    :reader brake_upper_border
    :initarg :brake_upper_border
    :type cl:float
    :initform 0.0)
   (throttle_lower_border
    :reader throttle_lower_border
    :initarg :throttle_lower_border
    :type cl:float
    :initform 0.0))
)

(cl:defclass EgoVehicleControlStatus (<EgoVehicleControlStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EgoVehicleControlStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EgoVehicleControlStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_ackermann_msgs-msg:<EgoVehicleControlStatus> is deprecated: use carla_ackermann_msgs-msg:EgoVehicleControlStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <EgoVehicleControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:status-val is deprecated.  Use carla_ackermann_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'speed_control_activation_count-val :lambda-list '(m))
(cl:defmethod speed_control_activation_count-val ((m <EgoVehicleControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:speed_control_activation_count-val is deprecated.  Use carla_ackermann_msgs-msg:speed_control_activation_count instead.")
  (speed_control_activation_count m))

(cl:ensure-generic-function 'speed_control_accel_delta-val :lambda-list '(m))
(cl:defmethod speed_control_accel_delta-val ((m <EgoVehicleControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:speed_control_accel_delta-val is deprecated.  Use carla_ackermann_msgs-msg:speed_control_accel_delta instead.")
  (speed_control_accel_delta m))

(cl:ensure-generic-function 'speed_control_accel_target-val :lambda-list '(m))
(cl:defmethod speed_control_accel_target-val ((m <EgoVehicleControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:speed_control_accel_target-val is deprecated.  Use carla_ackermann_msgs-msg:speed_control_accel_target instead.")
  (speed_control_accel_target m))

(cl:ensure-generic-function 'accel_control_pedal_delta-val :lambda-list '(m))
(cl:defmethod accel_control_pedal_delta-val ((m <EgoVehicleControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:accel_control_pedal_delta-val is deprecated.  Use carla_ackermann_msgs-msg:accel_control_pedal_delta instead.")
  (accel_control_pedal_delta m))

(cl:ensure-generic-function 'accel_control_pedal_target-val :lambda-list '(m))
(cl:defmethod accel_control_pedal_target-val ((m <EgoVehicleControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:accel_control_pedal_target-val is deprecated.  Use carla_ackermann_msgs-msg:accel_control_pedal_target instead.")
  (accel_control_pedal_target m))

(cl:ensure-generic-function 'brake_upper_border-val :lambda-list '(m))
(cl:defmethod brake_upper_border-val ((m <EgoVehicleControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:brake_upper_border-val is deprecated.  Use carla_ackermann_msgs-msg:brake_upper_border instead.")
  (brake_upper_border m))

(cl:ensure-generic-function 'throttle_lower_border-val :lambda-list '(m))
(cl:defmethod throttle_lower_border-val ((m <EgoVehicleControlStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:throttle_lower_border-val is deprecated.  Use carla_ackermann_msgs-msg:throttle_lower_border instead.")
  (throttle_lower_border m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EgoVehicleControlStatus>) ostream)
  "Serializes a message object of type '<EgoVehicleControlStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_control_activation_count)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_control_accel_delta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_control_accel_target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel_control_pedal_delta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel_control_pedal_target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_upper_border))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'throttle_lower_border))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EgoVehicleControlStatus>) istream)
  "Deserializes a message object of type '<EgoVehicleControlStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_control_activation_count)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_control_accel_delta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_control_accel_target) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_control_pedal_delta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_control_pedal_target) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_upper_border) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_lower_border) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EgoVehicleControlStatus>)))
  "Returns string type for a message object of type '<EgoVehicleControlStatus>"
  "carla_ackermann_msgs/EgoVehicleControlStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EgoVehicleControlStatus)))
  "Returns string type for a message object of type 'EgoVehicleControlStatus"
  "carla_ackermann_msgs/EgoVehicleControlStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EgoVehicleControlStatus>)))
  "Returns md5sum for a message object of type '<EgoVehicleControlStatus>"
  "5794a514157c1217dfba31bd9e6ca33c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EgoVehicleControlStatus)))
  "Returns md5sum for a message object of type 'EgoVehicleControlStatus"
  "5794a514157c1217dfba31bd9e6ca33c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EgoVehicleControlStatus>)))
  "Returns full string definition for message of type '<EgoVehicleControlStatus>"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents the control status variables of the ego vehicle control~%~%# the current control status~%string status~%~%# speed controller~%uint8   speed_control_activation_count~%float32 speed_control_accel_delta~%float32 speed_control_accel_target~%~%# acceleration controller~%float32 accel_control_pedal_delta~%float32 accel_control_pedal_target~%~%# borders for lay off pedal~%float32 brake_upper_border~%float32 throttle_lower_border~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EgoVehicleControlStatus)))
  "Returns full string definition for message of type 'EgoVehicleControlStatus"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents the control status variables of the ego vehicle control~%~%# the current control status~%string status~%~%# speed controller~%uint8   speed_control_activation_count~%float32 speed_control_accel_delta~%float32 speed_control_accel_target~%~%# acceleration controller~%float32 accel_control_pedal_delta~%float32 accel_control_pedal_target~%~%# borders for lay off pedal~%float32 brake_upper_border~%float32 throttle_lower_border~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EgoVehicleControlStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     1
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EgoVehicleControlStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'EgoVehicleControlStatus
    (cl:cons ':status (status msg))
    (cl:cons ':speed_control_activation_count (speed_control_activation_count msg))
    (cl:cons ':speed_control_accel_delta (speed_control_accel_delta msg))
    (cl:cons ':speed_control_accel_target (speed_control_accel_target msg))
    (cl:cons ':accel_control_pedal_delta (accel_control_pedal_delta msg))
    (cl:cons ':accel_control_pedal_target (accel_control_pedal_target msg))
    (cl:cons ':brake_upper_border (brake_upper_border msg))
    (cl:cons ':throttle_lower_border (throttle_lower_border msg))
))
