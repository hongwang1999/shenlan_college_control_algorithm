// Auto-generated. Do not edit!

// (in-package rosbridge_library.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TestDurationArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.durations = null;
    }
    else {
      if (initObj.hasOwnProperty('durations')) {
        this.durations = initObj.durations
      }
      else {
        this.durations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestDurationArray
    // Serialize message field [durations]
    bufferOffset = _arraySerializer.duration(obj.durations, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestDurationArray
    let len;
    let data = new TestDurationArray(null);
    // Deserialize message field [durations]
    data.durations = _arrayDeserializer.duration(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.durations.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosbridge_library/TestDurationArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b3bcadc803a7fcbc857c6a1dab53bcd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    duration[] durations
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestDurationArray(null);
    if (msg.durations !== undefined) {
      resolved.durations = msg.durations;
    }
    else {
      resolved.durations = []
    }

    return resolved;
    }
};

module.exports = TestDurationArray;
