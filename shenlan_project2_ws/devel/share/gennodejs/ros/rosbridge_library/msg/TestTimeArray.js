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

class TestTimeArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.times = null;
    }
    else {
      if (initObj.hasOwnProperty('times')) {
        this.times = initObj.times
      }
      else {
        this.times = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestTimeArray
    // Serialize message field [times]
    bufferOffset = _arraySerializer.time(obj.times, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestTimeArray
    let len;
    let data = new TestTimeArray(null);
    // Deserialize message field [times]
    data.times = _arrayDeserializer.time(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.times.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosbridge_library/TestTimeArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '237b97d24fd33588beee4cd8978b149d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time[] times
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestTimeArray(null);
    if (msg.times !== undefined) {
      resolved.times = msg.times;
    }
    else {
      resolved.times = []
    }

    return resolved;
    }
};

module.exports = TestTimeArray;
