;; Auto-generated. Do not edit!


(when (boundp 'carla_ackermann_msgs::EgoVehicleControlTarget)
  (if (not (find-package "CARLA_ACKERMANN_MSGS"))
    (make-package "CARLA_ACKERMANN_MSGS"))
  (shadow 'EgoVehicleControlTarget (find-package "CARLA_ACKERMANN_MSGS")))
(unless (find-package "CARLA_ACKERMANN_MSGS::EGOVEHICLECONTROLTARGET")
  (make-package "CARLA_ACKERMANN_MSGS::EGOVEHICLECONTROLTARGET"))

(in-package "ROS")
;;//! \htmlinclude EgoVehicleControlTarget.msg.html


(defclass carla_ackermann_msgs::EgoVehicleControlTarget
  :super ros::object
  :slots (_steering_angle _speed _speed_abs _accel _jerk ))

(defmethod carla_ackermann_msgs::EgoVehicleControlTarget
  (:init
   (&key
    ((:steering_angle __steering_angle) 0.0)
    ((:speed __speed) 0.0)
    ((:speed_abs __speed_abs) 0.0)
    ((:accel __accel) 0.0)
    ((:jerk __jerk) 0.0)
    )
   (send-super :init)
   (setq _steering_angle (float __steering_angle))
   (setq _speed (float __speed))
   (setq _speed_abs (float __speed_abs))
   (setq _accel (float __accel))
   (setq _jerk (float __jerk))
   self)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:speed_abs
   (&optional __speed_abs)
   (if __speed_abs (setq _speed_abs __speed_abs)) _speed_abs)
  (:accel
   (&optional __accel)
   (if __accel (setq _accel __accel)) _accel)
  (:jerk
   (&optional __jerk)
   (if __jerk (setq _jerk __jerk)) _jerk)
  (:serialization-length
   ()
   (+
    ;; float32 _steering_angle
    4
    ;; float32 _speed
    4
    ;; float32 _speed_abs
    4
    ;; float32 _accel
    4
    ;; float32 _jerk
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _steering_angle
       (sys::poke _steering_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_abs
       (sys::poke _speed_abs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel
       (sys::poke _accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _jerk
       (sys::poke _jerk (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_abs
     (setq _speed_abs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel
     (setq _accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _jerk
     (setq _jerk (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get carla_ackermann_msgs::EgoVehicleControlTarget :md5sum-) "f1f09cb4036d07c40bb9c47fb2889e9c")
(setf (get carla_ackermann_msgs::EgoVehicleControlTarget :datatype-) "carla_ackermann_msgs/EgoVehicleControlTarget")
(setf (get carla_ackermann_msgs::EgoVehicleControlTarget :definition-)
      "#
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

")



(provide :carla_ackermann_msgs/EgoVehicleControlTarget "f1f09cb4036d07c40bb9c47fb2889e9c")


