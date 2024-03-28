; Auto-generated. Do not edit!


(cl:in-package carla_ackermann_msgs-msg)


;//! \htmlinclude EgoVehicleControlTarget.msg.html

(cl:defclass <EgoVehicleControlTarget> (roslisp-msg-protocol:ros-message)
  ((steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (speed_abs
    :reader speed_abs
    :initarg :speed_abs
    :type cl:float
    :initform 0.0)
   (accel
    :reader accel
    :initarg :accel
    :type cl:float
    :initform 0.0)
   (jerk
    :reader jerk
    :initarg :jerk
    :type cl:float
    :initform 0.0))
)

(cl:defclass EgoVehicleControlTarget (<EgoVehicleControlTarget>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EgoVehicleControlTarget>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EgoVehicleControlTarget)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_ackermann_msgs-msg:<EgoVehicleControlTarget> is deprecated: use carla_ackermann_msgs-msg:EgoVehicleControlTarget instead.")))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <EgoVehicleControlTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:steering_angle-val is deprecated.  Use carla_ackermann_msgs-msg:steering_angle instead.")
  (steering_angle m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <EgoVehicleControlTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:speed-val is deprecated.  Use carla_ackermann_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'speed_abs-val :lambda-list '(m))
(cl:defmethod speed_abs-val ((m <EgoVehicleControlTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:speed_abs-val is deprecated.  Use carla_ackermann_msgs-msg:speed_abs instead.")
  (speed_abs m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <EgoVehicleControlTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:accel-val is deprecated.  Use carla_ackermann_msgs-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'jerk-val :lambda-list '(m))
(cl:defmethod jerk-val ((m <EgoVehicleControlTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:jerk-val is deprecated.  Use carla_ackermann_msgs-msg:jerk instead.")
  (jerk m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EgoVehicleControlTarget>) ostream)
  "Serializes a message object of type '<EgoVehicleControlTarget>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_abs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'jerk))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EgoVehicleControlTarget>) istream)
  "Deserializes a message object of type '<EgoVehicleControlTarget>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_abs) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'jerk) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EgoVehicleControlTarget>)))
  "Returns string type for a message object of type '<EgoVehicleControlTarget>"
  "carla_ackermann_msgs/EgoVehicleControlTarget")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EgoVehicleControlTarget)))
  "Returns string type for a message object of type 'EgoVehicleControlTarget"
  "carla_ackermann_msgs/EgoVehicleControlTarget")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EgoVehicleControlTarget>)))
  "Returns md5sum for a message object of type '<EgoVehicleControlTarget>"
  "f1f09cb4036d07c40bb9c47fb2889e9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EgoVehicleControlTarget)))
  "Returns md5sum for a message object of type 'EgoVehicleControlTarget"
  "f1f09cb4036d07c40bb9c47fb2889e9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EgoVehicleControlTarget>)))
  "Returns full string definition for message of type '<EgoVehicleControlTarget>"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents the target speed/accel values of the ego vehicle~%~%float32 steering_angle~%float32 speed~%float32 speed_abs~%float32 accel~%float32 jerk~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EgoVehicleControlTarget)))
  "Returns full string definition for message of type 'EgoVehicleControlTarget"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents the target speed/accel values of the ego vehicle~%~%float32 steering_angle~%float32 speed~%float32 speed_abs~%float32 accel~%float32 jerk~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EgoVehicleControlTarget>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EgoVehicleControlTarget>))
  "Converts a ROS message object to a list"
  (cl:list 'EgoVehicleControlTarget
    (cl:cons ':steering_angle (steering_angle msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':speed_abs (speed_abs msg))
    (cl:cons ':accel (accel msg))
    (cl:cons ':jerk (jerk msg))
))
