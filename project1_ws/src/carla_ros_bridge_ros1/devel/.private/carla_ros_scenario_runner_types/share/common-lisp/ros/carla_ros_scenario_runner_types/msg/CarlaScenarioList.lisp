; Auto-generated. Do not edit!


(cl:in-package carla_ros_scenario_runner_types-msg)


;//! \htmlinclude CarlaScenarioList.msg.html

(cl:defclass <CarlaScenarioList> (roslisp-msg-protocol:ros-message)
  ((scenarios
    :reader scenarios
    :initarg :scenarios
    :type (cl:vector carla_ros_scenario_runner_types-msg:CarlaScenario)
   :initform (cl:make-array 0 :element-type 'carla_ros_scenario_runner_types-msg:CarlaScenario :initial-element (cl:make-instance 'carla_ros_scenario_runner_types-msg:CarlaScenario))))
)

(cl:defclass CarlaScenarioList (<CarlaScenarioList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaScenarioList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaScenarioList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_ros_scenario_runner_types-msg:<CarlaScenarioList> is deprecated: use carla_ros_scenario_runner_types-msg:CarlaScenarioList instead.")))

(cl:ensure-generic-function 'scenarios-val :lambda-list '(m))
(cl:defmethod scenarios-val ((m <CarlaScenarioList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ros_scenario_runner_types-msg:scenarios-val is deprecated.  Use carla_ros_scenario_runner_types-msg:scenarios instead.")
  (scenarios m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaScenarioList>) ostream)
  "Serializes a message object of type '<CarlaScenarioList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scenarios))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'scenarios))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaScenarioList>) istream)
  "Deserializes a message object of type '<CarlaScenarioList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scenarios) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scenarios)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'carla_ros_scenario_runner_types-msg:CarlaScenario))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaScenarioList>)))
  "Returns string type for a message object of type '<CarlaScenarioList>"
  "carla_ros_scenario_runner_types/CarlaScenarioList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaScenarioList)))
  "Returns string type for a message object of type 'CarlaScenarioList"
  "carla_ros_scenario_runner_types/CarlaScenarioList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaScenarioList>)))
  "Returns md5sum for a message object of type '<CarlaScenarioList>"
  "81800830fb5128ccb96838817ec89047")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaScenarioList)))
  "Returns md5sum for a message object of type 'CarlaScenarioList"
  "81800830fb5128ccb96838817ec89047")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaScenarioList>)))
  "Returns full string definition for message of type '<CarlaScenarioList>"
  (cl:format cl:nil "#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%CarlaScenario[] scenarios~%~%~%================================================================================~%MSG: carla_ros_scenario_runner_types/CarlaScenario~%#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%string name~%string scenario_file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaScenarioList)))
  "Returns full string definition for message of type 'CarlaScenarioList"
  (cl:format cl:nil "#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%CarlaScenario[] scenarios~%~%~%================================================================================~%MSG: carla_ros_scenario_runner_types/CarlaScenario~%#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%string name~%string scenario_file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaScenarioList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scenarios) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaScenarioList>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaScenarioList
    (cl:cons ':scenarios (scenarios msg))
))
