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


//-----------------------------------------------------------

class ServiceHostRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.service = null;
    }
    else {
      if (initObj.hasOwnProperty('service')) {
        this.service = initObj.service
      }
      else {
        this.service = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceHostRequest
    // Serialize message field [service]
    bufferOffset = _serializer.string(obj.service, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceHostRequest
    let len;
    let data = new ServiceHostRequest(null);
    // Deserialize message field [service]
    data.service = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.service);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/ServiceHostRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cbcfa13b08f6d36710b9af8741e6112';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string service
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceHostRequest(null);
    if (msg.service !== undefined) {
      resolved.service = msg.service;
    }
    else {
      resolved.service = ''
    }

    return resolved;
    }
};

class ServiceHostResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.host = null;
    }
    else {
      if (initObj.hasOwnProperty('host')) {
        this.host = initObj.host
      }
      else {
        this.host = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceHostResponse
    // Serialize message field [host]
    bufferOffset = _serializer.string(obj.host, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceHostResponse
    let len;
    let data = new ServiceHostResponse(null);
    // Deserialize message field [host]
    data.host = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.host);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/ServiceHostResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '092ff9f63242a37704ce411703ec5eaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string host
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceHostResponse(null);
    if (msg.host !== undefined) {
      resolved.host = msg.host;
    }
    else {
      resolved.host = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ServiceHostRequest,
  Response: ServiceHostResponse,
  md5sum() { return 'a1b60006f8ee69637c856c94dd192f5a'; },
  datatype() { return 'rosapi/ServiceHost'; }
};
