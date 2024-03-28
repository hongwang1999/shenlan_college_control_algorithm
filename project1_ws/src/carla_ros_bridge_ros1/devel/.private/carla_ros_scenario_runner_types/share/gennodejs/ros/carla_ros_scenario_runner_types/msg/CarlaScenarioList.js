// Auto-generated. Do not edit!

// (in-package carla_ros_scenario_runner_types.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CarlaScenario = require('./CarlaScenario.js');

//-----------------------------------------------------------

class CarlaScenarioList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.scenarios = null;
    }
    else {
      if (initObj.hasOwnProperty('scenarios')) {
        this.scenarios = initObj.scenarios
      }
      else {
        this.scenarios = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarlaScenarioList
    // Serialize message field [scenarios]
    // Serialize the length for message field [scenarios]
    bufferOffset = _serializer.uint32(obj.scenarios.length, buffer, bufferOffset);
    obj.scenarios.forEach((val) => {
      bufferOffset = CarlaScenario.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarlaScenarioList
    let len;
    let data = new CarlaScenarioList(null);
    // Deserialize message field [scenarios]
    // Deserialize array length for message field [scenarios]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.scenarios = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.scenarios[i] = CarlaScenario.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.scenarios.forEach((val) => {
      length += CarlaScenario.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_ros_scenario_runner_types/CarlaScenarioList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '81800830fb5128ccb96838817ec89047';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarlaScenarioList(null);
    if (msg.scenarios !== undefined) {
      resolved.scenarios = new Array(msg.scenarios.length);
      for (let i = 0; i < resolved.scenarios.length; ++i) {
        resolved.scenarios[i] = CarlaScenario.Resolve(msg.scenarios[i]);
      }
    }
    else {
      resolved.scenarios = []
    }

    return resolved;
    }
};

module.exports = CarlaScenarioList;
