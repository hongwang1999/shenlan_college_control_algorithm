// Auto-generated. Do not edit!

// (in-package carla_ackermann_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class EgoVehicleControlStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.speed_control_activation_count = null;
      this.speed_control_accel_delta = null;
      this.speed_control_accel_target = null;
      this.accel_control_pedal_delta = null;
      this.accel_control_pedal_target = null;
      this.brake_upper_border = null;
      this.throttle_lower_border = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = '';
      }
      if (initObj.hasOwnProperty('speed_control_activation_count')) {
        this.speed_control_activation_count = initObj.speed_control_activation_count
      }
      else {
        this.speed_control_activation_count = 0;
      }
      if (initObj.hasOwnProperty('speed_control_accel_delta')) {
        this.speed_control_accel_delta = initObj.speed_control_accel_delta
      }
      else {
        this.speed_control_accel_delta = 0.0;
      }
      if (initObj.hasOwnProperty('speed_control_accel_target')) {
        this.speed_control_accel_target = initObj.speed_control_accel_target
      }
      else {
        this.speed_control_accel_target = 0.0;
      }
      if (initObj.hasOwnProperty('accel_control_pedal_delta')) {
        this.accel_control_pedal_delta = initObj.accel_control_pedal_delta
      }
      else {
        this.accel_control_pedal_delta = 0.0;
      }
      if (initObj.hasOwnProperty('accel_control_pedal_target')) {
        this.accel_control_pedal_target = initObj.accel_control_pedal_target
      }
      else {
        this.accel_control_pedal_target = 0.0;
      }
      if (initObj.hasOwnProperty('brake_upper_border')) {
        this.brake_upper_border = initObj.brake_upper_border
      }
      else {
        this.brake_upper_border = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_lower_border')) {
        this.throttle_lower_border = initObj.throttle_lower_border
      }
      else {
        this.throttle_lower_border = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EgoVehicleControlStatus
    // Serialize message field [status]
    bufferOffset = _serializer.string(obj.status, buffer, bufferOffset);
    // Serialize message field [speed_control_activation_count]
    bufferOffset = _serializer.uint8(obj.speed_control_activation_count, buffer, bufferOffset);
    // Serialize message field [speed_control_accel_delta]
    bufferOffset = _serializer.float32(obj.speed_control_accel_delta, buffer, bufferOffset);
    // Serialize message field [speed_control_accel_target]
    bufferOffset = _serializer.float32(obj.speed_control_accel_target, buffer, bufferOffset);
    // Serialize message field [accel_control_pedal_delta]
    bufferOffset = _serializer.float32(obj.accel_control_pedal_delta, buffer, bufferOffset);
    // Serialize message field [accel_control_pedal_target]
    bufferOffset = _serializer.float32(obj.accel_control_pedal_target, buffer, bufferOffset);
    // Serialize message field [brake_upper_border]
    bufferOffset = _serializer.float32(obj.brake_upper_border, buffer, bufferOffset);
    // Serialize message field [throttle_lower_border]
    bufferOffset = _serializer.float32(obj.throttle_lower_border, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EgoVehicleControlStatus
    let len;
    let data = new EgoVehicleControlStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speed_control_activation_count]
    data.speed_control_activation_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed_control_accel_delta]
    data.speed_control_accel_delta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_control_accel_target]
    data.speed_control_accel_target = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_control_pedal_delta]
    data.accel_control_pedal_delta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_control_pedal_target]
    data.accel_control_pedal_target = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_upper_border]
    data.brake_upper_border = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle_lower_border]
    data.throttle_lower_border = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.status);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_ackermann_msgs/EgoVehicleControlStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5794a514157c1217dfba31bd9e6ca33c';
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EgoVehicleControlStatus(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = ''
    }

    if (msg.speed_control_activation_count !== undefined) {
      resolved.speed_control_activation_count = msg.speed_control_activation_count;
    }
    else {
      resolved.speed_control_activation_count = 0
    }

    if (msg.speed_control_accel_delta !== undefined) {
      resolved.speed_control_accel_delta = msg.speed_control_accel_delta;
    }
    else {
      resolved.speed_control_accel_delta = 0.0
    }

    if (msg.speed_control_accel_target !== undefined) {
      resolved.speed_control_accel_target = msg.speed_control_accel_target;
    }
    else {
      resolved.speed_control_accel_target = 0.0
    }

    if (msg.accel_control_pedal_delta !== undefined) {
      resolved.accel_control_pedal_delta = msg.accel_control_pedal_delta;
    }
    else {
      resolved.accel_control_pedal_delta = 0.0
    }

    if (msg.accel_control_pedal_target !== undefined) {
      resolved.accel_control_pedal_target = msg.accel_control_pedal_target;
    }
    else {
      resolved.accel_control_pedal_target = 0.0
    }

    if (msg.brake_upper_border !== undefined) {
      resolved.brake_upper_border = msg.brake_upper_border;
    }
    else {
      resolved.brake_upper_border = 0.0
    }

    if (msg.throttle_lower_border !== undefined) {
      resolved.throttle_lower_border = msg.throttle_lower_border;
    }
    else {
      resolved.throttle_lower_border = 0.0
    }

    return resolved;
    }
};

module.exports = EgoVehicleControlStatus;
