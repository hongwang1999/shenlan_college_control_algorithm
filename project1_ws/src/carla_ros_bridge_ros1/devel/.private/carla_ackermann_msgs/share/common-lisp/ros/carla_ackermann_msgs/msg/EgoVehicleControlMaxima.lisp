; Auto-generated. Do not edit!


(cl:in-package carla_ackermann_msgs-msg)


;//! \htmlinclude EgoVehicleControlMaxima.msg.html

(cl:defclass <EgoVehicleControlMaxima> (roslisp-msg-protocol:ros-message)
  ((max_steering_angle
    :reader max_steering_angle
    :initarg :max_steering_angle
    :type cl:float
    :initform 0.0)
   (max_speed
    :reader max_speed
    :initarg :max_speed
    :type cl:float
    :initform 0.0)
   (max_accel
    :reader max_accel
    :initarg :max_accel
    :type cl:float
    :initform 0.0)
   (max_decel
    :reader max_decel
    :initarg :max_decel
    :type cl:float
    :initform 0.0)
   (min_accel
    :reader min_accel
    :initarg :min_accel
    :type cl:float
    :initform 0.0)
   (max_pedal
    :reader max_pedal
    :initarg :max_pedal
    :type cl:float
    :initform 0.0))
)

(cl:defclass EgoVehicleControlMaxima (<EgoVehicleControlMaxima>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EgoVehicleControlMaxima>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EgoVehicleControlMaxima)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_ackermann_msgs-msg:<EgoVehicleControlMaxima> is deprecated: use carla_ackermann_msgs-msg:EgoVehicleControlMaxima instead.")))

(cl:ensure-generic-function 'max_steering_angle-val :lambda-list '(m))
(cl:defmethod max_steering_angle-val ((m <EgoVehicleControlMaxima>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:max_steering_angle-val is deprecated.  Use carla_ackermann_msgs-msg:max_steering_angle instead.")
  (max_steering_angle m))

(cl:ensure-generic-function 'max_speed-val :lambda-list '(m))
(cl:defmethod max_speed-val ((m <EgoVehicleControlMaxima>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:max_speed-val is deprecated.  Use carla_ackermann_msgs-msg:max_speed instead.")
  (max_speed m))

(cl:ensure-generic-function 'max_accel-val :lambda-list '(m))
(cl:defmethod max_accel-val ((m <EgoVehicleControlMaxima>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:max_accel-val is deprecated.  Use carla_ackermann_msgs-msg:max_accel instead.")
  (max_accel m))

(cl:ensure-generic-function 'max_decel-val :lambda-list '(m))
(cl:defmethod max_decel-val ((m <EgoVehicleControlMaxima>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:max_decel-val is deprecated.  Use carla_ackermann_msgs-msg:max_decel instead.")
  (max_decel m))

(cl:ensure-generic-function 'min_accel-val :lambda-list '(m))
(cl:defmethod min_accel-val ((m <EgoVehicleControlMaxima>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:min_accel-val is deprecated.  Use carla_ackermann_msgs-msg:min_accel instead.")
  (min_accel m))

(cl:ensure-generic-function 'max_pedal-val :lambda-list '(m))
(cl:defmethod max_pedal-val ((m <EgoVehicleControlMaxima>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:max_pedal-val is deprecated.  Use carla_ackermann_msgs-msg:max_pedal instead.")
  (max_pedal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EgoVehicleControlMaxima>) ostream)
  "Serializes a message object of type '<EgoVehicleControlMaxima>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_steering_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_decel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_accel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_pedal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EgoVehicleControlMaxima>) istream)
  "Deserializes a message object of type '<EgoVehicleControlMaxima>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_steering_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_accel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_decel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_accel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_pedal) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EgoVehicleControlMaxima>)))
  "Returns string type for a message object of type '<EgoVehicleControlMaxima>"
  "carla_ackermann_msgs/EgoVehicleControlMaxima")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EgoVehicleControlMaxima)))
  "Returns string type for a message object of type 'EgoVehicleControlMaxima"
  "carla_ackermann_msgs/EgoVehicleControlMaxima")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EgoVehicleControlMaxima>)))
  "Returns md5sum for a message object of type '<EgoVehicleControlMaxima>"
  "9895ba8c0c51c81d773f7d191f9aeb3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EgoVehicleControlMaxima)))
  "Returns md5sum for a message object of type 'EgoVehicleControlMaxima"
  "9895ba8c0c51c81d773f7d191f9aeb3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EgoVehicleControlMaxima>)))
  "Returns full string definition for message of type '<EgoVehicleControlMaxima>"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents some ego vehicle control maximal values~%~%# vehicle maximum values~%float32 max_steering_angle~%float32 max_speed~%float32 max_accel~%float32 max_decel~%float32 min_accel~%float32 max_pedal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EgoVehicleControlMaxima)))
  "Returns full string definition for message of type 'EgoVehicleControlMaxima"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents some ego vehicle control maximal values~%~%# vehicle maximum values~%float32 max_steering_angle~%float32 max_speed~%float32 max_accel~%float32 max_decel~%float32 min_accel~%float32 max_pedal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EgoVehicleControlMaxima>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EgoVehicleControlMaxima>))
  "Converts a ROS message object to a list"
  (cl:list 'EgoVehicleControlMaxima
    (cl:cons ':max_steering_angle (max_steering_angle msg))
    (cl:cons ':max_speed (max_speed msg))
    (cl:cons ':max_accel (max_accel msg))
    (cl:cons ':max_decel (max_decel msg))
    (cl:cons ':min_accel (min_accel msg))
    (cl:cons ':max_pedal (max_pedal msg))
))
