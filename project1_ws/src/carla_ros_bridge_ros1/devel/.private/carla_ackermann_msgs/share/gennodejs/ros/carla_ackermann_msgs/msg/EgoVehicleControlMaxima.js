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

class EgoVehicleControlMaxima {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.max_steering_angle = null;
      this.max_speed = null;
      this.max_accel = null;
      this.max_decel = null;
      this.min_accel = null;
      this.max_pedal = null;
    }
    else {
      if (initObj.hasOwnProperty('max_steering_angle')) {
        this.max_steering_angle = initObj.max_steering_angle
      }
      else {
        this.max_steering_angle = 0.0;
      }
      if (initObj.hasOwnProperty('max_speed')) {
        this.max_speed = initObj.max_speed
      }
      else {
        this.max_speed = 0.0;
      }
      if (initObj.hasOwnProperty('max_accel')) {
        this.max_accel = initObj.max_accel
      }
      else {
        this.max_accel = 0.0;
      }
      if (initObj.hasOwnProperty('max_decel')) {
        this.max_decel = initObj.max_decel
      }
      else {
        this.max_decel = 0.0;
      }
      if (initObj.hasOwnProperty('min_accel')) {
        this.min_accel = initObj.min_accel
      }
      else {
        this.min_accel = 0.0;
      }
      if (initObj.hasOwnProperty('max_pedal')) {
        this.max_pedal = initObj.max_pedal
      }
      else {
        this.max_pedal = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EgoVehicleControlMaxima
    // Serialize message field [max_steering_angle]
    bufferOffset = _serializer.float32(obj.max_steering_angle, buffer, bufferOffset);
    // Serialize message field [max_speed]
    bufferOffset = _serializer.float32(obj.max_speed, buffer, bufferOffset);
    // Serialize message field [max_accel]
    bufferOffset = _serializer.float32(obj.max_accel, buffer, bufferOffset);
    // Serialize message field [max_decel]
    bufferOffset = _serializer.float32(obj.max_decel, buffer, bufferOffset);
    // Serialize message field [min_accel]
    bufferOffset = _serializer.float32(obj.min_accel, buffer, bufferOffset);
    // Serialize message field [max_pedal]
    bufferOffset = _serializer.float32(obj.max_pedal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EgoVehicleControlMaxima
    let len;
    let data = new EgoVehicleControlMaxima(null);
    // Deserialize message field [max_steering_angle]
    data.max_steering_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_speed]
    data.max_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_accel]
    data.max_accel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_decel]
    data.max_decel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_accel]
    data.min_accel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_pedal]
    data.max_pedal = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_ackermann_msgs/EgoVehicleControlMaxima';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9895ba8c0c51c81d773f7d191f9aeb3e';
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
    # This represents some ego vehicle control maximal values
    
    # vehicle maximum values
    float32 max_steering_angle
    float32 max_speed
    float32 max_accel
    float32 max_decel
    float32 min_accel
    float32 max_pedal
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EgoVehicleControlMaxima(null);
    if (msg.max_steering_angle !== undefined) {
      resolved.max_steering_angle = msg.max_steering_angle;
    }
    else {
      resolved.max_steering_angle = 0.0
    }

    if (msg.max_speed !== undefined) {
      resolved.max_speed = msg.max_speed;
    }
    else {
      resolved.max_speed = 0.0
    }

    if (msg.max_accel !== undefined) {
      resolved.max_accel = msg.max_accel;
    }
    else {
      resolved.max_accel = 0.0
    }

    if (msg.max_decel !== undefined) {
      resolved.max_decel = msg.max_decel;
    }
    else {
      resolved.max_decel = 0.0
    }

    if (msg.min_accel !== undefined) {
      resolved.min_accel = msg.min_accel;
    }
    else {
      resolved.min_accel = 0.0
    }

    if (msg.max_pedal !== undefined) {
      resolved.max_pedal = msg.max_pedal;
    }
    else {
      resolved.max_pedal = 0.0
    }

    return resolved;
    }
};

module.exports = EgoVehicleControlMaxima;
