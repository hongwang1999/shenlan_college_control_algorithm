// Auto-generated. Do not edit!

// (in-package rosapi.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let TypeDef = require('../msg/TypeDef.js');

//-----------------------------------------------------------

class ServiceResponseDetailsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceResponseDetailsRequest
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceResponseDetailsRequest
    let len;
    let data = new ServiceResponseDetailsRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/ServiceResponseDetailsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc67331de85cf97091b7d45e5c64ab75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceResponseDetailsRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    return resolved;
    }
};

class ServiceResponseDetailsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.typedefs = null;
    }
    else {
      if (initObj.hasOwnProperty('typedefs')) {
        this.typedefs = initObj.typedefs
      }
      else {
        this.typedefs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceResponseDetailsResponse
    // Serialize message field [typedefs]
    // Serialize the length for message field [typedefs]
    bufferOffset = _serializer.uint32(obj.typedefs.length, buffer, bufferOffset);
    obj.typedefs.forEach((val) => {
      bufferOffset = TypeDef.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceResponseDetailsResponse
    let len;
    let data = new ServiceResponseDetailsResponse(null);
    // Deserialize message field [typedefs]
    // Deserialize array length for message field [typedefs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.typedefs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.typedefs[i] = TypeDef.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.typedefs.forEach((val) => {
      length += TypeDef.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/ServiceResponseDetailsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd088db0da260a2cde072246a5f577519';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TypeDef[] typedefs
    
    ================================================================================
    MSG: rosapi/TypeDef
    string type
    string[] fieldnames
    string[] fieldtypes
    int32[] fieldarraylen
    string[] examples
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceResponseDetailsResponse(null);
    if (msg.typedefs !== undefined) {
      resolved.typedefs = new Array(msg.typedefs.length);
      for (let i = 0; i < resolved.typedefs.length; ++i) {
        resolved.typedefs[i] = TypeDef.Resolve(msg.typedefs[i]);
      }
    }
    else {
      resolved.typedefs = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ServiceResponseDetailsRequest,
  Response: ServiceResponseDetailsResponse,
  md5sum() { return 'bdbf5d5ad601e3c2244ad2f8692bd791'; },
  datatype() { return 'rosapi/ServiceResponseDetails'; }
};
