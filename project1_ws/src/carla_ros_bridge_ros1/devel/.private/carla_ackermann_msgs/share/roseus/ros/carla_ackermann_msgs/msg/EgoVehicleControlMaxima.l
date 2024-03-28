;; Auto-generated. Do not edit!


(when (boundp 'carla_ackermann_msgs::EgoVehicleControlMaxima)
  (if (not (find-package "CARLA_ACKERMANN_MSGS"))
    (make-package "CARLA_ACKERMANN_MSGS"))
  (shadow 'EgoVehicleControlMaxima (find-package "CARLA_ACKERMANN_MSGS")))
(unless (find-package "CARLA_ACKERMANN_MSGS::EGOVEHICLECONTROLMAXIMA")
  (make-package "CARLA_ACKERMANN_MSGS::EGOVEHICLECONTROLMAXIMA"))

(in-package "ROS")
;;//! \htmlinclude EgoVehicleControlMaxima.msg.html


(defclass carla_ackermann_msgs::EgoVehicleControlMaxima
  :super ros::object
  :slots (_max_steering_angle _max_speed _max_accel _max_decel _min_accel _max_pedal ))

(defmethod carla_ackermann_msgs::EgoVehicleControlMaxima
  (:init
   (&key
    ((:max_steering_angle __max_steering_angle) 0.0)
    ((:max_speed __max_speed) 0.0)
    ((:max_accel __max_accel) 0.0)
    ((:max_decel __max_decel) 0.0)
    ((:min_accel __min_accel) 0.0)
    ((:max_pedal __max_pedal) 0.0)
    )
   (send-super :init)
   (setq _max_steering_angle (float __max_steering_angle))
   (setq _max_speed (float __max_speed))
   (setq _max_accel (float __max_accel))
   (setq _max_decel (float __max_decel))
   (setq _min_accel (float __min_accel))
   (setq _max_pedal (float __max_pedal))
   self)
  (:max_steering_angle
   (&optional __max_steering_angle)
   (if __max_steering_angle (setq _max_steering_angle __max_steering_angle)) _max_steering_angle)
  (:max_speed
   (&optional __max_speed)
   (if __max_speed (setq _max_speed __max_speed)) _max_speed)
  (:max_accel
   (&optional __max_accel)
   (if __max_accel (setq _max_accel __max_accel)) _max_accel)
  (:max_decel
   (&optional __max_decel)
   (if __max_decel (setq _max_decel __max_decel)) _max_decel)
  (:min_accel
   (&optional __min_accel)
   (if __min_accel (setq _min_accel __min_accel)) _min_accel)
  (:max_pedal
   (&optional __max_pedal)
   (if __max_pedal (setq _max_pedal __max_pedal)) _max_pedal)
  (:serialization-length
   ()
   (+
    ;; float32 _max_steering_angle
    4
    ;; float32 _max_speed
    4
    ;; float32 _max_accel
    4
    ;; float32 _max_decel
    4
    ;; float32 _min_accel
    4
    ;; float32 _max_pedal
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _max_steering_angle
       (sys::poke _max_steering_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_speed
       (sys::poke _max_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_accel
       (sys::poke _max_accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_decel
       (sys::poke _max_decel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_accel
       (sys::poke _min_accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_pedal
       (sys::poke _max_pedal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _max_steering_angle
     (setq _max_steering_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_speed
     (setq _max_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_accel
     (setq _max_accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_decel
     (setq _max_decel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_accel
     (setq _min_accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_pedal
     (setq _max_pedal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get carla_ackermann_msgs::EgoVehicleControlMaxima :md5sum-) "9895ba8c0c51c81d773f7d191f9aeb3e")
(setf (get carla_ackermann_msgs::EgoVehicleControlMaxima :datatype-) "carla_ackermann_msgs/EgoVehicleControlMaxima")
(setf (get carla_ackermann_msgs::EgoVehicleControlMaxima :definition-)
      "#
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

")



(provide :carla_ackermann_msgs/EgoVehicleControlMaxima "9895ba8c0c51c81d773f7d191f9aeb3e")


