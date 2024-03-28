;; Auto-generated. Do not edit!


(when (boundp 'carla_ackermann_msgs::EgoVehicleControlStatus)
  (if (not (find-package "CARLA_ACKERMANN_MSGS"))
    (make-package "CARLA_ACKERMANN_MSGS"))
  (shadow 'EgoVehicleControlStatus (find-package "CARLA_ACKERMANN_MSGS")))
(unless (find-package "CARLA_ACKERMANN_MSGS::EGOVEHICLECONTROLSTATUS")
  (make-package "CARLA_ACKERMANN_MSGS::EGOVEHICLECONTROLSTATUS"))

(in-package "ROS")
;;//! \htmlinclude EgoVehicleControlStatus.msg.html


(defclass carla_ackermann_msgs::EgoVehicleControlStatus
  :super ros::object
  :slots (_status _speed_control_activation_count _speed_control_accel_delta _speed_control_accel_target _accel_control_pedal_delta _accel_control_pedal_target _brake_upper_border _throttle_lower_border ))

(defmethod carla_ackermann_msgs::EgoVehicleControlStatus
  (:init
   (&key
    ((:status __status) "")
    ((:speed_control_activation_count __speed_control_activation_count) 0)
    ((:speed_control_accel_delta __speed_control_accel_delta) 0.0)
    ((:speed_control_accel_target __speed_control_accel_target) 0.0)
    ((:accel_control_pedal_delta __accel_control_pedal_delta) 0.0)
    ((:accel_control_pedal_target __accel_control_pedal_target) 0.0)
    ((:brake_upper_border __brake_upper_border) 0.0)
    ((:throttle_lower_border __throttle_lower_border) 0.0)
    )
   (send-super :init)
   (setq _status (string __status))
   (setq _speed_control_activation_count (round __speed_control_activation_count))
   (setq _speed_control_accel_delta (float __speed_control_accel_delta))
   (setq _speed_control_accel_target (float __speed_control_accel_target))
   (setq _accel_control_pedal_delta (float __accel_control_pedal_delta))
   (setq _accel_control_pedal_target (float __accel_control_pedal_target))
   (setq _brake_upper_border (float __brake_upper_border))
   (setq _throttle_lower_border (float __throttle_lower_border))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:speed_control_activation_count
   (&optional __speed_control_activation_count)
   (if __speed_control_activation_count (setq _speed_control_activation_count __speed_control_activation_count)) _speed_control_activation_count)
  (:speed_control_accel_delta
   (&optional __speed_control_accel_delta)
   (if __speed_control_accel_delta (setq _speed_control_accel_delta __speed_control_accel_delta)) _speed_control_accel_delta)
  (:speed_control_accel_target
   (&optional __speed_control_accel_target)
   (if __speed_control_accel_target (setq _speed_control_accel_target __speed_control_accel_target)) _speed_control_accel_target)
  (:accel_control_pedal_delta
   (&optional __accel_control_pedal_delta)
   (if __accel_control_pedal_delta (setq _accel_control_pedal_delta __accel_control_pedal_delta)) _accel_control_pedal_delta)
  (:accel_control_pedal_target
   (&optional __accel_control_pedal_target)
   (if __accel_control_pedal_target (setq _accel_control_pedal_target __accel_control_pedal_target)) _accel_control_pedal_target)
  (:brake_upper_border
   (&optional __brake_upper_border)
   (if __brake_upper_border (setq _brake_upper_border __brake_upper_border)) _brake_upper_border)
  (:throttle_lower_border
   (&optional __throttle_lower_border)
   (if __throttle_lower_border (setq _throttle_lower_border __throttle_lower_border)) _throttle_lower_border)
  (:serialization-length
   ()
   (+
    ;; string _status
    4 (length _status)
    ;; uint8 _speed_control_activation_count
    1
    ;; float32 _speed_control_accel_delta
    4
    ;; float32 _speed_control_accel_target
    4
    ;; float32 _accel_control_pedal_delta
    4
    ;; float32 _accel_control_pedal_target
    4
    ;; float32 _brake_upper_border
    4
    ;; float32 _throttle_lower_border
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; uint8 _speed_control_activation_count
       (write-byte _speed_control_activation_count s)
     ;; float32 _speed_control_accel_delta
       (sys::poke _speed_control_accel_delta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_control_accel_target
       (sys::poke _speed_control_accel_target (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_control_pedal_delta
       (sys::poke _accel_control_pedal_delta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_control_pedal_target
       (sys::poke _accel_control_pedal_target (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake_upper_border
       (sys::poke _brake_upper_border (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle_lower_border
       (sys::poke _throttle_lower_border (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _speed_control_activation_count
     (setq _speed_control_activation_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _speed_control_accel_delta
     (setq _speed_control_accel_delta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_control_accel_target
     (setq _speed_control_accel_target (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_control_pedal_delta
     (setq _accel_control_pedal_delta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_control_pedal_target
     (setq _accel_control_pedal_target (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake_upper_border
     (setq _brake_upper_border (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle_lower_border
     (setq _throttle_lower_border (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get carla_ackermann_msgs::EgoVehicleControlStatus :md5sum-) "5794a514157c1217dfba31bd9e6ca33c")
(setf (get carla_ackermann_msgs::EgoVehicleControlStatus :datatype-) "carla_ackermann_msgs/EgoVehicleControlStatus")
(setf (get carla_ackermann_msgs::EgoVehicleControlStatus :definition-)
      "#
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

")



(provide :carla_ackermann_msgs/EgoVehicleControlStatus "5794a514157c1217dfba31bd9e6ca33c")


