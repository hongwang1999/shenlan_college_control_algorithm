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

class TestMultipleResponseFieldsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestMultipleResponseFieldsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestMultipleResponseFieldsRequest
    let len;
    let data = new TestMultipleResponseFieldsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosbridge_library/TestMultipleResponseFieldsRequest';
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
    const resolved = new TestMultipleResponseFieldsRequest(null);
    return resolved;
    }
};

class TestMultipleResponseFieldsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.int = null;
      this.float = null;
      this.string = null;
      this.bool = null;
    }
    else {
      if (initObj.hasOwnProperty('int')) {
        this.int = initObj.int
      }
      else {
        this.int = 0;
      }
      if (initObj.hasOwnProperty('float')) {
        this.float = initObj.float
      }
      else {
        this.float = 0.0;
      }
      if (initObj.hasOwnProperty('string')) {
        this.string = initObj.string
      }
      else {
        this.string = '';
      }
      if (initObj.hasOwnProperty('bool')) {
        this.bool = initObj.bool
      }
      else {
        this.bool = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestMultipleResponseFieldsResponse
    // Serialize message field [int]
    bufferOffset = _serializer.int32(obj.int, buffer, bufferOffset);
    // Serialize message field [float]
    bufferOffset = _serializer.float32(obj.float, buffer, bufferOffset);
    // Serialize message field [string]
    bufferOffset = _serializer.string(obj.string, buffer, bufferOffset);
    // Serialize message field [bool]
    bufferOffset = _serializer.bool(obj.bool, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestMultipleResponseFieldsResponse
    let len;
    let data = new TestMultipleResponseFieldsResponse(null);
    // Deserialize message field [int]
    data.int = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [float]
    data.float = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [string]
    data.string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bool]
    data.bool = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.string);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosbridge_library/TestMultipleResponseFieldsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cce9fb727dd0f31d504d7d198a1f4ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 int
    float32 float
    string string
    bool bool
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestMultipleResponseFieldsResponse(null);
    if (msg.int !== undefined) {
      resolved.int = msg.int;
    }
    else {
      resolved.int = 0
    }

    if (msg.float !== undefined) {
      resolved.float = msg.float;
    }
    else {
      resolved.float = 0.0
    }

    if (msg.string !== undefined) {
      resolved.string = msg.string;
    }
    else {
      resolved.string = ''
    }

    if (msg.bool !== undefined) {
      resolved.bool = msg.bool;
    }
    else {
      resolved.bool = false
    }

    return resolved;
    }
};

module.exports = {
  Request: TestMultipleResponseFieldsRequest,
  Response: TestMultipleResponseFieldsResponse,
  md5sum() { return '6cce9fb727dd0f31d504d7d198a1f4ef'; },
  datatype() { return 'rosbridge_library/TestMultipleResponseFields'; }
};
