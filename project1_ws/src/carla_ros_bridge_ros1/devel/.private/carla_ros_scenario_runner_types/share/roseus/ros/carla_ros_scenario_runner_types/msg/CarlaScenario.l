;; Auto-generated. Do not edit!


(when (boundp 'carla_ros_scenario_runner_types::CarlaScenario)
  (if (not (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES"))
    (make-package "CARLA_ROS_SCENARIO_RUNNER_TYPES"))
  (shadow 'CarlaScenario (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES")))
(unless (find-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIO")
  (make-package "CARLA_ROS_SCENARIO_RUNNER_TYPES::CARLASCENARIO"))

(in-package "ROS")
;;//! \htmlinclude CarlaScenario.msg.html


(defclass carla_ros_scenario_runner_types::CarlaScenario
  :super ros::object
  :slots (_name _scenario_file ))

(defmethod carla_ros_scenario_runner_types::CarlaScenario
  (:init
   (&key
    ((:name __name) "")
    ((:scenario_file __scenario_file) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _scenario_file (string __scenario_file))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:scenario_file
   (&optional __scenario_file)
   (if __scenario_file (setq _scenario_file __scenario_file)) _scenario_file)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _scenario_file
    4 (length _scenario_file)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _scenario_file
       (write-long (length _scenario_file) s) (princ _scenario_file s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _scenario_file
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _scenario_file (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get carla_ros_scenario_runner_types::CarlaScenario :md5sum-) "93d5e86b5b9801c6f04e8ec494ca17c3")
(setf (get carla_ros_scenario_runner_types::CarlaScenario :datatype-) "carla_ros_scenario_runner_types/CarlaScenario")
(setf (get carla_ros_scenario_runner_types::CarlaScenario :definition-)
      "#
# Copyright (c) 2020 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
string name
string scenario_file

")



(provide :carla_ros_scenario_runner_types/CarlaScenario "93d5e86b5b9801c6f04e8ec494ca17c3")


