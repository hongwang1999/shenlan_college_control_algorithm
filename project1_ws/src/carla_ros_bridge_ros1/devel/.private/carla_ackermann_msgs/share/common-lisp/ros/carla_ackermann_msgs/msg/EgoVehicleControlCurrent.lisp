; Auto-generated. Do not edit!


(cl:in-package carla_ackermann_msgs-msg)


;//! \htmlinclude EgoVehicleControlCurrent.msg.html

(cl:defclass <EgoVehicleControlCurrent> (roslisp-msg-protocol:ros-message)
  ((time_sec
    :reader time_sec
    :initarg :time_sec
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
    :initform 0.0))
)

(cl:defclass EgoVehicleControlCurrent (<EgoVehicleControlCurrent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EgoVehicleControlCurrent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EgoVehicleControlCurrent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_ackermann_msgs-msg:<EgoVehicleControlCurrent> is deprecated: use carla_ackermann_msgs-msg:EgoVehicleControlCurrent instead.")))

(cl:ensure-generic-function 'time_sec-val :lambda-list '(m))
(cl:defmethod time_sec-val ((m <EgoVehicleControlCurrent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:time_sec-val is deprecated.  Use carla_ackermann_msgs-msg:time_sec instead.")
  (time_sec m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <EgoVehicleControlCurrent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:speed-val is deprecated.  Use carla_ackermann_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'speed_abs-val :lambda-list '(m))
(cl:defmethod speed_abs-val ((m <EgoVehicleControlCurrent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:speed_abs-val is deprecated.  Use carla_ackermann_msgs-msg:speed_abs instead.")
  (speed_abs m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <EgoVehicleControlCurrent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ackermann_msgs-msg:accel-val is deprecated.  Use carla_ackermann_msgs-msg:accel instead.")
  (accel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EgoVehicleControlCurrent>) ostream)
  "Serializes a message object of type '<EgoVehicleControlCurrent>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_sec))))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EgoVehicleControlCurrent>) istream)
  "Deserializes a message object of type '<EgoVehicleControlCurrent>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_sec) (roslisp-utils:decode-single-float-bits bits)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EgoVehicleControlCurrent>)))
  "Returns string type for a message object of type '<EgoVehicleControlCurrent>"
  "carla_ackermann_msgs/EgoVehicleControlCurrent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EgoVehicleControlCurrent)))
  "Returns string type for a message object of type 'EgoVehicleControlCurrent"
  "carla_ackermann_msgs/EgoVehicleControlCurrent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EgoVehicleControlCurrent>)))
  "Returns md5sum for a message object of type '<EgoVehicleControlCurrent>"
  "f4947f35d6b5f0274303e776e887cd4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EgoVehicleControlCurrent)))
  "Returns md5sum for a message object of type 'EgoVehicleControlCurrent"
  "f4947f35d6b5f0274303e776e887cd4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EgoVehicleControlCurrent>)))
  "Returns full string definition for message of type '<EgoVehicleControlCurrent>"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents the current time/speed/accel values of the vehicle used by the controller~%~%float32 time_sec~%float32 speed~%float32 speed_abs~%float32 accel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EgoVehicleControlCurrent)))
  "Returns full string definition for message of type 'EgoVehicleControlCurrent"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents the current time/speed/accel values of the vehicle used by the controller~%~%float32 time_sec~%float32 speed~%float32 speed_abs~%float32 accel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EgoVehicleControlCurrent>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EgoVehicleControlCurrent>))
  "Converts a ROS message object to a list"
  (cl:list 'EgoVehicleControlCurrent
    (cl:cons ':time_sec (time_sec msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':speed_abs (speed_abs msg))
    (cl:cons ':accel (accel msg))
))
