; Auto-generated. Do not edit!


(cl:in-package carla_ros_scenario_runner_types-srv)


;//! \htmlinclude ExecuteScenario-request.msg.html

(cl:defclass <ExecuteScenario-request> (roslisp-msg-protocol:ros-message)
  ((scenario
    :reader scenario
    :initarg :scenario
    :type carla_ros_scenario_runner_types-msg:CarlaScenario
    :initform (cl:make-instance 'carla_ros_scenario_runner_types-msg:CarlaScenario)))
)

(cl:defclass ExecuteScenario-request (<ExecuteScenario-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteScenario-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteScenario-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_ros_scenario_runner_types-srv:<ExecuteScenario-request> is deprecated: use carla_ros_scenario_runner_types-srv:ExecuteScenario-request instead.")))

(cl:ensure-generic-function 'scenario-val :lambda-list '(m))
(cl:defmethod scenario-val ((m <ExecuteScenario-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ros_scenario_runner_types-srv:scenario-val is deprecated.  Use carla_ros_scenario_runner_types-srv:scenario instead.")
  (scenario m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteScenario-request>) ostream)
  "Serializes a message object of type '<ExecuteScenario-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scenario) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteScenario-request>) istream)
  "Deserializes a message object of type '<ExecuteScenario-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scenario) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteScenario-request>)))
  "Returns string type for a service object of type '<ExecuteScenario-request>"
  "carla_ros_scenario_runner_types/ExecuteScenarioRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteScenario-request)))
  "Returns string type for a service object of type 'ExecuteScenario-request"
  "carla_ros_scenario_runner_types/ExecuteScenarioRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteScenario-request>)))
  "Returns md5sum for a message object of type '<ExecuteScenario-request>"
  "658be3a38e71a537a631efb452e9b5d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteScenario-request)))
  "Returns md5sum for a message object of type 'ExecuteScenario-request"
  "658be3a38e71a537a631efb452e9b5d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteScenario-request>)))
  "Returns full string definition for message of type '<ExecuteScenario-request>"
  (cl:format cl:nil "#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%CarlaScenario scenario~%~%================================================================================~%MSG: carla_ros_scenario_runner_types/CarlaScenario~%#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%string name~%string scenario_file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteScenario-request)))
  "Returns full string definition for message of type 'ExecuteScenario-request"
  (cl:format cl:nil "#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%CarlaScenario scenario~%~%================================================================================~%MSG: carla_ros_scenario_runner_types/CarlaScenario~%#~%# Copyright (c) 2020 Intel Corporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%string name~%string scenario_file~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteScenario-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scenario))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteScenario-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteScenario-request
    (cl:cons ':scenario (scenario msg))
))
;//! \htmlinclude ExecuteScenario-response.msg.html

(cl:defclass <ExecuteScenario-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ExecuteScenario-response (<ExecuteScenario-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecuteScenario-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecuteScenario-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_ros_scenario_runner_types-srv:<ExecuteScenario-response> is deprecated: use carla_ros_scenario_runner_types-srv:ExecuteScenario-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ExecuteScenario-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_ros_scenario_runner_types-srv:result-val is deprecated.  Use carla_ros_scenario_runner_types-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecuteScenario-response>) ostream)
  "Serializes a message object of type '<ExecuteScenario-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecuteScenario-response>) istream)
  "Deserializes a message object of type '<ExecuteScenario-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecuteScenario-response>)))
  "Returns string type for a service object of type '<ExecuteScenario-response>"
  "carla_ros_scenario_runner_types/ExecuteScenarioResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteScenario-response)))
  "Returns string type for a service object of type 'ExecuteScenario-response"
  "carla_ros_scenario_runner_types/ExecuteScenarioResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecuteScenario-response>)))
  "Returns md5sum for a message object of type '<ExecuteScenario-response>"
  "658be3a38e71a537a631efb452e9b5d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecuteScenario-response)))
  "Returns md5sum for a message object of type 'ExecuteScenario-response"
  "658be3a38e71a537a631efb452e9b5d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecuteScenario-response>)))
  "Returns full string definition for message of type '<ExecuteScenario-response>"
  (cl:format cl:nil "bool result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecuteScenario-response)))
  "Returns full string definition for message of type 'ExecuteScenario-response"
  (cl:format cl:nil "bool result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecuteScenario-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecuteScenario-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecuteScenario-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExecuteScenario)))
  'ExecuteScenario-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExecuteScenario)))
  'ExecuteScenario-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecuteScenario)))
  "Returns string type for a service object of type '<ExecuteScenario>"
  "carla_ros_scenario_runner_types/ExecuteScenario")