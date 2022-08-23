// Auto-generated. Do not edit!

// (in-package rosbridge_library.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TestHeaderArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestHeaderArray
    // Serialize message field [header]
    // Serialize the length for message field [header]
    bufferOffset = _serializer.uint32(obj.header.length, buffer, bufferOffset);
    obj.header.forEach((val) => {
      bufferOffset = std_msgs.msg.Header.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestHeaderArray
    let len;
    let data = new TestHeaderArray(null);
    // Deserialize message field [header]
    // Deserialize array length for message field [header]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.header = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.header[i] = std_msgs.msg.Header.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.header.forEach((val) => {
      length += std_msgs.msg.Header.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosbridge_library/TestHeaderArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7be0bb39af8fb9129d5a76e6b63a290';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header[] header
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestHeaderArray(null);
    if (msg.header !== undefined) {
      resolved.header = new Array(msg.header.length);
      for (let i = 0; i < resolved.header.length; ++i) {
        resolved.header[i] = std_msgs.msg.Header.Resolve(msg.header[i]);
      }
    }
    else {
      resolved.header = []
    }

    return resolved;
    }
};

module.exports = TestHeaderArray;
