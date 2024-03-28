;; Auto-generated. Do not edit!


(when (boundp 'carla_ackermann_msgs::EgoVehicleControlInfo)
  (if (not (find-package "CARLA_ACKERMANN_MSGS"))
    (make-package "CARLA_ACKERMANN_MSGS"))
  (shadow 'EgoVehicleControlInfo (find-package "CARLA_ACKERMANN_MSGS")))
(unless (find-package "CARLA_ACKERMANN_MSGS::EGOVEHICLECONTROLINFO")
  (make-package "CARLA_ACKERMANN_MSGS::EGOVEHICLECONTROLINFO"))

(in-package "ROS")
;;//! \htmlinclude EgoVehicleControlInfo.msg.html
(if (not (find-package "CARLA_MSGS"))
  (ros::roseus-add-msgs "carla_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass carla_ackermann_msgs::EgoVehicleControlInfo
  :super ros::object
  :slots (_header _restrictions _target _current _status _output ))

(defmethod carla_ackermann_msgs::EgoVehicleControlInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:restrictions __restrictions) (instance carla_ackermann_msgs::EgoVehicleControlMaxima :init))
    ((:target __target) (instance carla_ackermann_msgs::EgoVehicleControlTarget :init))
    ((:current __current) (instance carla_ackermann_msgs::EgoVehicleControlCurrent :init))
    ((:status __status) (instance carla_ackermann_msgs::EgoVehicleControlStatus :init))
    ((:output __output) (instance carla_msgs::CarlaEgoVehicleControl :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _restrictions __restrictions)
   (setq _target __target)
   (setq _current __current)
   (setq _status __status)
   (setq _output __output)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:restrictions
   (&rest __restrictions)
   (if (keywordp (car __restrictions))
       (send* _restrictions __restrictions)
     (progn
       (if __restrictions (setq _restrictions (car __restrictions)))
       _restrictions)))
  (:target
   (&rest __target)
   (if (keywordp (car __target))
       (send* _target __target)
     (progn
       (if __target (setq _target (car __target)))
       _target)))
  (:current
   (&rest __current)
   (if (keywordp (car __current))
       (send* _current __current)
     (progn
       (if __current (setq _current (car __current)))
       _current)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:output
   (&rest __output)
   (if (keywordp (car __output))
       (send* _output __output)
     (progn
       (if __output (setq _output (car __output)))
       _output)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; carla_ackermann_msgs/EgoVehicleControlMaxima _restrictions
    (send _restrictions :serialization-length)
    ;; carla_ackermann_msgs/EgoVehicleControlTarget _target
    (send _target :serialization-length)
    ;; carla_ackermann_msgs/EgoVehicleControlCurrent _current
    (send _current :serialization-length)
    ;; carla_ackermann_msgs/EgoVehicleControlStatus _status
    (send _status :serialization-length)
    ;; carla_msgs/CarlaEgoVehicleControl _output
    (send _output :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; carla_ackermann_msgs/EgoVehicleControlMaxima _restrictions
       (send _restrictions :serialize s)
     ;; carla_ackermann_msgs/EgoVehicleControlTarget _target
       (send _target :serialize s)
     ;; carla_ackermann_msgs/EgoVehicleControlCurrent _current
       (send _current :serialize s)
     ;; carla_ackermann_msgs/EgoVehicleControlStatus _status
       (send _status :serialize s)
     ;; carla_msgs/CarlaEgoVehicleControl _output
       (send _output :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; carla_ackermann_msgs/EgoVehicleControlMaxima _restrictions
     (send _restrictions :deserialize buf ptr-) (incf ptr- (send _restrictions :serialization-length))
   ;; carla_ackermann_msgs/EgoVehicleControlTarget _target
     (send _target :deserialize buf ptr-) (incf ptr- (send _target :serialization-length))
   ;; carla_ackermann_msgs/EgoVehicleControlCurrent _current
     (send _current :deserialize buf ptr-) (incf ptr- (send _current :serialization-length))
   ;; carla_ackermann_msgs/EgoVehicleControlStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; carla_msgs/CarlaEgoVehicleControl _output
     (send _output :deserialize buf ptr-) (incf ptr- (send _output :serialization-length))
   ;;
   self)
  )

(setf (get carla_ackermann_msgs::EgoVehicleControlInfo :md5sum-) "dc2719c7e816ee0bd3fbbf8de4fec4db")
(setf (get carla_ackermann_msgs::EgoVehicleControlInfo :datatype-) "carla_ackermann_msgs/EgoVehicleControlInfo")
(setf (get carla_ackermann_msgs::EgoVehicleControlInfo :definition-)
      "#
# Copyright (c) 2018-2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
# This represents an info message of the ego vehicle

std_msgs/Header header

# the restrictions
EgoVehicleControlMaxima restrictions

# the target values
EgoVehicleControlTarget target

# the currently measured values
EgoVehicleControlCurrent current

# the current control status
EgoVehicleControlStatus status

# the current control output to CARLA
carla_msgs/CarlaEgoVehicleControl output

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: carla_ackermann_msgs/EgoVehicleControlMaxima
#
# Copyright (c) 2018-2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
# This represents some ego vehicle control maximal values

# vehicle maximum values
float32 max_steering_angle
float32 max_speed
float32 max_accel
float32 max_decel
float32 min_accel
float32 max_pedal

================================================================================
MSG: carla_ackermann_msgs/EgoVehicleControlTarget
#
# Copyright (c) 2018-2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
# This represents the target speed/accel values of the ego vehicle

float32 steering_angle
float32 speed
float32 speed_abs
float32 accel
float32 jerk

================================================================================
MSG: carla_ackermann_msgs/EgoVehicleControlCurrent
#
# Copyright (c) 2018-2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
# This represents the current time/speed/accel values of the vehicle used by the controller

float32 time_sec
float32 speed
float32 speed_abs
float32 accel
================================================================================
MSG: carla_ackermann_msgs/EgoVehicleControlStatus
#
# Copyright (c) 2018-2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
# This represents the control status variables of the ego vehicle control

# the current control status
string status

# speed controller
uint8   speed_control_activation_count
float32 speed_control_accel_delta
float32 speed_control_accel_target

# acceleration controller
float32 accel_control_pedal_delta
float32 accel_control_pedal_target

# borders for lay off pedal
float32 brake_upper_border
float32 throttle_lower_border

================================================================================
MSG: carla_msgs/CarlaEgoVehicleControl
#
# Copyright (c) 2018-2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
# This represents a vehicle control message sent to CARLA simulator

std_msgs/Header header

# The CARLA vehicle control data

# 0. <= throttle <= 1.
float32 throttle

# -1. <= steer <= 1.
float32 steer

# 0. <= brake <= 1.
float32 brake

# hand_brake 0 or 1
bool hand_brake

# reverse 0 or 1
bool reverse

# gear
int32 gear

# manual gear shift
bool manual_gear_shift

")



(provide :carla_ackermann_msgs/EgoVehicleControlInfo "dc2719c7e816ee0bd3fbbf8de4fec4db")


