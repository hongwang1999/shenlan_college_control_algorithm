;; Auto-generated. Do not edit!


(when (boundp 'carla_ackermann_msgs::EgoVehicleControlCurrent)
  (if (not (find-package "CARLA_ACKERMANN_MSGS"))
    (make-package "CARLA_ACKERMANN_MSGS"))
  (shadow 'EgoVehicleControlCurrent (find-package "CARLA_ACKERMANN_MSGS")))
(unless (find-package "CARLA_ACKERMANN_MSGS::EGOVEHICLECONTROLCURRENT")
  (make-package "CARLA_ACKERMANN_MSGS::EGOVEHICLECONTROLCURRENT"))

(in-package "ROS")
;;//! \htmlinclude EgoVehicleControlCurrent.msg.html


(defclass carla_ackermann_msgs::EgoVehicleControlCurrent
  :super ros::object
  :slots (_time_sec _speed _speed_abs _accel ))

(defmethod carla_ackermann_msgs::EgoVehicleControlCurrent
  (:init
   (&key
    ((:time_sec __time_sec) 0.0)
    ((:speed __speed) 0.0)
    ((:speed_abs __speed_abs) 0.0)
    ((:accel __accel) 0.0)
    )
   (send-super :init)
   (setq _time_sec (float __time_sec))
   (setq _speed (float __speed))
   (setq _speed_abs (float __speed_abs))
   (setq _accel (float __accel))
   self)
  (:time_sec
   (&optional __time_sec)
   (if __time_sec (setq _time_sec __time_sec)) _time_sec)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:speed_abs
   (&optional __speed_abs)
   (if __speed_abs (setq _speed_abs __speed_abs)) _speed_abs)
  (:accel
   (&optional __accel)
   (if __accel (setq _accel __accel)) _accel)
  (:serialization-length
   ()
   (+
    ;; float32 _time_sec
    4
    ;; float32 _speed
    4
    ;; float32 _speed_abs
    4
    ;; float32 _accel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _time_sec
       (sys::poke _time_sec (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_abs
       (sys::poke _speed_abs (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel
       (sys::poke _accel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _time_sec
     (setq _time_sec (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_abs
     (setq _speed_abs (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel
     (setq _accel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get carla_ackermann_msgs::EgoVehicleControlCurrent :md5sum-) "f4947f35d6b5f0274303e776e887cd4b")
(setf (get carla_ackermann_msgs::EgoVehicleControlCurrent :datatype-) "carla_ackermann_msgs/EgoVehicleControlCurrent")
(setf (get carla_ackermann_msgs::EgoVehicleControlCurrent :definition-)
      "#
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
")



(provide :carla_ackermann_msgs/EgoVehicleControlCurrent "f4947f35d6b5f0274303e776e887cd4b")


