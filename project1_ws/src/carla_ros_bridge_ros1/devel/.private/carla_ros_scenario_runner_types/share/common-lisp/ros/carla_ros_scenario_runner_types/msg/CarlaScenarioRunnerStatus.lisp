; Auto-generated. Do not edit!


(cl:in-package carla_ros_scenario_runner_types-msg)


;//! \htmlinclude CarlaScenarioRunnerStatus.msg.html

(cl:defclass <CarlaScenarioRunnerStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CarlaScenarioRunnerStatus (<CarlaScenarioRunnerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaScenarioRunnerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaScenarioRunnerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_ros_scenario_runner_types-msg:<CarlaScenarioRunnerStatus> is deprecated: use carla_ros_scenario_runner_types-msg:CarlaScenarioRunnerStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CarlaScenarioRunnerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ros_scenario_runner_types-msg:status-val is deprecated.  Use carla_ros_scenario_runner_types-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CarlaScenarioRunnerStatus>)))
    "Constants for message type '<CarlaScenarioRunnerStatus>"
  '((:STOPPED . 0)
    (:STARTING . 1)
    (:RUNNING . 2)
    (:SHUTTINGDOWN . 3)
    (:ERROR . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CarlaScenarioRunnerStatus)))
    "Constants for message type 'CarlaScenarioRunnerStatus"
  '((:STOPPED . 0)
    (:STARTING . 1)
    (:RUNNING . 2)
    (:SHUTTINGDOWN . 3)
    (:ERROR . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaScenarioRunnerStatus>) ostream)
  "Serializes a message object of type '<CarlaScenarioRunnerStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaScenarioRunnerStatus>) istream)
  "Deserializes a message object of type '<CarlaScenarioRunnerStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaScenarioRunnerStatus>)))
  "Returns string type for a message object of type '<CarlaScenarioRunnerStatus>"
  "carla_ros_scenario_runner_types/CarlaScenarioRunnerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaScenarioRunnerStatus)))
  "Returns string type for a message object of type 'CarlaScenarioRunnerStatus"
  "carla_ros_scenario_runner_types/CarlaScenarioRunnerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaScenarioRunnerStatus>)))
  "Returns md5sum for a message object of type '<CarlaScenarioRunnerStatus>"
  "740a173d5d748af3689ca68d3d3cd525")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaScenarioRunnerStatus)))
  "Returns md5sum for a message object of type 'CarlaScenarioRunnerStatus"
  "740a173d5d748af3689ca68d3d3cd525")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaScenarioRunnerStatus>)))
  "Returns full string definition for message of type '<CarlaScenarioRunnerStatus>"
  (cl:format cl:nil "#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%uint8 STOPPED = 0~%uint8 STARTING = 1~%uint8 RUNNING = 2~%uint8 SHUTTINGDOWN = 3~%uint8 ERROR = 4~%~%uint8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaScenarioRunnerStatus)))
  "Returns full string definition for message of type 'CarlaScenarioRunnerStatus"
  (cl:format cl:nil "#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%uint8 STOPPED = 0~%uint8 STARTING = 1~%uint8 RUNNING = 2~%uint8 SHUTTINGDOWN = 3~%uint8 ERROR = 4~%~%uint8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaScenarioRunnerStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaScenarioRunnerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaScenarioRunnerStatus
    (cl:cons ':status (status msg))
))
