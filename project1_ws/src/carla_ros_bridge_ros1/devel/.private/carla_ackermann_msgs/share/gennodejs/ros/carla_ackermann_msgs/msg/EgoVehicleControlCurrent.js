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

class EgoVehicleControlCurrent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time_sec = null;
      this.speed = null;
      this.speed_abs = null;
      this.accel = null;
    }
    else {
      if (initObj.hasOwnProperty('time_sec')) {
        this.time_sec = initObj.time_sec
      }
      else {
        this.time_sec = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('speed_abs')) {
        this.speed_abs = initObj.speed_abs
      }
      else {
        this.speed_abs = 0.0;
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EgoVehicleControlCurrent
    // Serialize message field [time_sec]
    bufferOffset = _serializer.float32(obj.time_sec, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [speed_abs]
    bufferOffset = _serializer.float32(obj.speed_abs, buffer, bufferOffset);
    // Serialize message field [accel]
    bufferOffset = _serializer.float32(obj.accel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EgoVehicleControlCurrent
    let len;
    let data = new EgoVehicleControlCurrent(null);
    // Deserialize message field [time_sec]
    data.time_sec = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_abs]
    data.speed_abs = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel]
    data.accel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_ackermann_msgs/EgoVehicleControlCurrent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f4947f35d6b5f0274303e776e887cd4b';
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
    # This represents the current time/speed/accel values of the vehicle used by the controller
    
    float32 time_sec
    float32 speed
    float32 speed_abs
    float32 accel
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EgoVehicleControlCurrent(null);
    if (msg.time_sec !== undefined) {
      resolved.time_sec = msg.time_sec;
    }
    else {
      resolved.time_sec = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.speed_abs !== undefined) {
      resolved.speed_abs = msg.speed_abs;
    }
    else {
      resolved.speed_abs = 0.0
    }

    if (msg.accel !== undefined) {
      resolved.accel = msg.accel;
    }
    else {
      resolved.accel = 0.0
    }

    return resolved;
    }
};

module.exports = EgoVehicleControlCurrent;
