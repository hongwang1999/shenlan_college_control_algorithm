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

class ServiceTypeRequest {
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
    // Serializes a message object of type ServiceTypeRequest
    // Serialize message field [service]
    bufferOffset = _serializer.string(obj.service, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceTypeRequest
    let len;
    let data = new ServiceTypeRequest(null);
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
    return 'rosapi/ServiceTypeRequest';
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
    const resolved = new ServiceTypeRequest(null);
    if (msg.service !== undefined) {
      resolved.service = msg.service;
    }
    else {
      resolved.service = ''
    }

    return resolved;
    }
};

class ServiceTypeResponse {
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
    // Serializes a message object of type ServiceTypeResponse
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceTypeResponse
    let len;
    let data = new ServiceTypeResponse(null);
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
    return 'rosapi/ServiceTypeResponse';
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
    const resolved = new ServiceTypeResponse(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ServiceTypeRequest,
  Response: ServiceTypeResponse,
  md5sum() { return '0e24a2dcdf70e483afc092a35a1f15f7'; },
  datatype() { return 'rosapi/ServiceType'; }
};
