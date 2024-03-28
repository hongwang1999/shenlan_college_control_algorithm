;; Auto-generated. Do not edit!


(when (boundp 'carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus)
  (if (not (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES"))
    (make-package "CARLA_ROS_SCENARIO_RUNNER_TYPES"))
  (shadow 'CarlaScenarioRunnerStatus (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES")))
(unless (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIORUNNERSTATUS")
  (make-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIORUNNERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude CarlaScenarioRunnerStatus.msg.html


(intern "*STOPPED*" (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIORUNNERSTATUS"))
(shadow '*STOPPED* (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIORUNNERSTATUS"))
(defconstant carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus::*STOPPED* 0)
(intern "*STARTING*" (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIORUNNERSTATUS"))
(shadow '*STARTING* (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIORUNNERSTATUS"))
(defconstant carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus::*STARTING* 1)
(intern "*RUNNING*" (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIORUNNERSTATUS"))
(shadow '*RUNNING* (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIORUNNERSTATUS"))
(defconstant carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus::*RUNNING* 2)
(intern "*SHUTTINGDOWN*" (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIORUNNERSTATUS"))
(shadow '*SHUTTINGDOWN* (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIORUNNERSTATUS"))
(defconstant carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus::*SHUTTINGDOWN* 3)
(intern "*ERROR*" (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIORUNNERSTATUS"))
(shadow '*ERROR* (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIORUNNERSTATUS"))
(defconstant carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus::*ERROR* 4)

(defun carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus-to-symbol (const)
  (cond
        ((= const 0) 'carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus::*STOPPED*)
        ((= const 1) 'carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus::*STARTING*)
        ((= const 2) 'carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus::*RUNNING*)
        ((= const 3) 'carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus::*SHUTTINGDOWN*)
        ((= const 4) 'carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus::*ERROR*)
        (t nil)))

(defclass carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus
  :super ros::object
  :slots (_status ))

(defmethod carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus :md5sum-) "740a173d5d748af3689ca68d3d3cd525")
(setf (get carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus :datatype-) "carla_ros_scenario_runner_types/CarlaScenarioRunnerStatus")
(setf (get carla_ros_scenario_runner_types::CarlaScenarioRunnerStatus :definition-)
      "#
# Copyright (c) 2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
uint8 STOPPED = 0
uint8 STARTING = 1
uint8 RUNNING = 2
uint8 SHUTTINGDOWN = 3
uint8 ERROR = 4

uint8 status


")



(provide :carla_ros_scenario_runner_types/CarlaScenarioRunnerStatus "740a173d5d748af3689ca68d3d3cd525")


