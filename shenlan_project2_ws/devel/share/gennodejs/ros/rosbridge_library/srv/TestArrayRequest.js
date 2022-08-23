// Auto-generated. Do not edit!

// (in-package rosbridge_library.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TestArrayRequestRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.int = null;
    }
    else {
      if (initObj.hasOwnProperty('int')) {
        this.int = initObj.int
      }
      else {
        this.int = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestArrayRequestRequest
    // Serialize message field [int]
    bufferOffset = _arraySerializer.int32(obj.int, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestArrayRequestRequest
    let len;
    let data = new TestArrayRequestRequest(null);
    // Deserialize message field [int]
    data.int = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.int.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosbridge_library/TestArrayRequestRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d7cfb7e4aa0844868966efa8a264398';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] int
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestArrayRequestRequest(null);
    if (msg.int !== undefined) {
      resolved.int = msg.int;
    }
    else {
      resolved.int = []
    }

    return resolved;
    }
};

class TestArrayRequestResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestArrayRequestResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestArrayRequestResponse
    let len;
    let data = new TestArrayRequestResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosbridge_library/TestArrayRequestResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestArrayRequestResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: TestArrayRequestRequest,
  Response: TestArrayRequestResponse,
  md5sum() { return '3d7cfb7e4aa0844868966efa8a264398'; },
  datatype() { return 'rosbridge_library/TestArrayRequest'; }
};
