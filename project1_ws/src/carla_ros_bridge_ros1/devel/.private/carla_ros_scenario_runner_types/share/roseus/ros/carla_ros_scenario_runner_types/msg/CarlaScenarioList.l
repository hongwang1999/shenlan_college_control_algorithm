;; Auto-generated. Do not edit!


(when (boundp 'carla_ros_scenario_runner_types::CarlaScenarioList)
  (if (not (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES"))
    (make-package "CARLA_ROS_SCENARIO_RUNNER_TYPES"))
  (shadow 'CarlaScenarioList (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES")))
(unless (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIOLIST")
  (make-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIOLIST"))

(in-package "ROS")
;;//! \htmlinclude CarlaScenarioList.msg.html


(defclass carla_ros_scenario_runner_types::CarlaScenarioList
  :super ros::object
  :slots (_scenarios ))

(defmethod carla_ros_scenario_runner_types::CarlaScenarioList
  (:init
   (&key
    ((:scenarios __scenarios) ())
    )
   (send-super :init)
   (setq _scenarios __scenarios)
   self)
  (:scenarios
   (&rest __scenarios)
   (if (keywordp (car __scenarios))
       (send* _scenarios __scenarios)
     (progn
       (if __scenarios (setq _scenarios (car __scenarios)))
       _scenarios)))
  (:serialization-length
   ()
   (+
    ;; carla_ros_scenario_runner_types/CarlaScenario[] _scenarios
    (apply #'+ (send-all _scenarios :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; carla_ros_scenario_runner_types/CarlaScenario[] _scenarios
     (write-long (length _scenarios) s)
     (dolist (elem _scenarios)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; carla_ros_scenario_runner_types/CarlaScenario[] _scenarios
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scenarios (let (r) (dotimes (i n) (push (instance carla_ros_scenario_runner_types::CarlaScenario :init) r)) r))
     (dolist (elem- _scenarios)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get carla_ros_scenario_runner_types::CarlaScenarioList :md5sum-) "81800830fb5128ccb96838817ec89047")
(setf (get carla_ros_scenario_runner_types::CarlaScenarioList :datatype-) "carla_ros_scenario_runner_types/CarlaScenarioList")
(setf (get carla_ros_scenario_runner_types::CarlaScenarioList :definition-)
      "#
# Copyright (c) 2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
CarlaScenario[] scenarios


================================================================================
MSG: carla_ros_scenario_runner_types/CarlaScenario
#
# Copyright (c) 2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
string name
string scenario_file

")



(provide :carla_ros_scenario_runner_types/CarlaScenarioList "81800830fb5128ccb96838817ec89047")


