// Auto-generated. Do not edit!

// (in-package carla_ackermann_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EgoVehicleControlMaxima = require('./EgoVehicleControlMaxima.js');
let EgoVehicleControlTarget = require('./EgoVehicleControlTarget.js');
let EgoVehicleControlCurrent = require('./EgoVehicleControlCurrent.js');
let EgoVehicleControlStatus = require('./EgoVehicleControlStatus.js');
let carla_msgs = _finder('carla_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class EgoVehicleControlInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.restrictions = null;
      this.target = null;
      this.current = null;
      this.status = null;
      this.output = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('restrictions')) {
        this.restrictions = initObj.restrictions
      }
      else {
        this.restrictions = new EgoVehicleControlMaxima();
      }
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = new EgoVehicleControlTarget();
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = new EgoVehicleControlCurrent();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new EgoVehicleControlStatus();
      }
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = new carla_msgs.msg.CarlaEgoVehicleControl();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EgoVehicleControlInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [restrictions]
    bufferOffset = EgoVehicleControlMaxima.serialize(obj.restrictions, buffer, bufferOffset);
    // Serialize message field [target]
    bufferOffset = EgoVehicleControlTarget.serialize(obj.target, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = EgoVehicleControlCurrent.serialize(obj.current, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = EgoVehicleControlStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [output]
    bufferOffset = carla_msgs.msg.CarlaEgoVehicleControl.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EgoVehicleControlInfo
    let len;
    let data = new EgoVehicleControlInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [restrictions]
    data.restrictions = EgoVehicleControlMaxima.deserialize(buffer, bufferOffset);
    // Deserialize message field [target]
    data.target = EgoVehicleControlTarget.deserialize(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = EgoVehicleControlCurrent.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = EgoVehicleControlStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [output]
    data.output = carla_msgs.msg.CarlaEgoVehicleControl.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += EgoVehicleControlStatus.getMessageSize(object.status);
    length += carla_msgs.msg.CarlaEgoVehicleControl.getMessageSize(object.output);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_ackermann_msgs/EgoVehicleControlInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc2719c7e816ee0bd3fbbf8de4fec4db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # Copyright (c) 2018-2019 Intel Corporation.
    #
    # This work is licensed under the terms of the MIT license.
    # For a copy, see <https://opensource.org/licenses/MIT>.
    #
    # This represents an info message of the ego vehicle
    
    std_msgs/Header header
    
    # the restrictions
    EgoVehicleControlMaxima restrictions
    
    # the target values
    EgoVehicleControlTarget target
    
    # the currently measured values
    EgoVehicleControlCurrent current
    
    # the current control status
    EgoVehicleControlStatus status
    
    # the current control output to CARLA
    carla_msgs/CarlaEgoVehicleControl output
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: carla_ackermann_msgs/EgoVehicleControlMaxima
    #
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
    
    ================================================================================
    MSG: carla_ackermann_msgs/EgoVehicleControlTarget
    #
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
    
    ================================================================================
    MSG: carla_ackermann_msgs/EgoVehicleControlCurrent
    #
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
    ================================================================================
    MSG: carla_ackermann_msgs/EgoVehicleControlStatus
    #
    # Copyright (c) 2018-2019 Intel Corporation.
    #
    # This work is licensed under the terms of the MIT license.
    # For a copy, see <https://opensource.org/licenses/MIT>.
    #
    # This represents the control status variables of the ego vehicle control
    
    # the current control status
    string status
    
    # speed controller
    uint8   speed_control_activation_count
    float32 speed_control_accel_delta
    float32 speed_control_accel_target
    
    # acceleration controller
    float32 accel_control_pedal_delta
    float32 accel_control_pedal_target
    
    # borders for lay off pedal
    float32 brake_upper_border
    float32 throttle_lower_border
    
    ================================================================================
    MSG: carla_msgs/CarlaEgoVehicleControl
    #
    # Copyright (c) 2018-2019 Intel Corporation.
    #
    # This work is licensed under the terms of the MIT license.
    # For a copy, see <https://opensource.org/licenses/MIT>.
    #
    # This represents a vehicle control message sent to CARLA simulator
    
    std_msgs/Header header
    
    # The CARLA vehicle control data
    
    # 0. <= throttle <= 1.
    float32 throttle
    
    # -1. <= steer <= 1.
    float32 steer
    
    # 0. <= brake <= 1.
    float32 brake
    
    # hand_brake 0 or 1
    bool hand_brake
    
    # reverse 0 or 1
    bool reverse
    
    # gear
    int32 gear
    
    # manual gear shift
    bool manual_gear_shift
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EgoVehicleControlInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.restrictions !== undefined) {
      resolved.restrictions = EgoVehicleControlMaxima.Resolve(msg.restrictions)
    }
    else {
      resolved.restrictions = new EgoVehicleControlMaxima()
    }

    if (msg.target !== undefined) {
      resolved.target = EgoVehicleControlTarget.Resolve(msg.target)
    }
    else {
      resolved.target = new EgoVehicleControlTarget()
    }

    if (msg.current !== undefined) {
      resolved.current = EgoVehicleControlCurrent.Resolve(msg.current)
    }
    else {
      resolved.current = new EgoVehicleControlCurrent()
    }

    if (msg.status !== undefined) {
      resolved.status = EgoVehicleControlStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new EgoVehicleControlStatus()
    }

    if (msg.output !== undefined) {
      resolved.output = carla_msgs.msg.CarlaEgoVehicleControl.Resolve(msg.output)
    }
    else {
      resolved.output = new carla_msgs.msg.CarlaEgoVehicleControl()
    }

    return resolved;
    }
};

module.exports = EgoVehicleControlInfo;
