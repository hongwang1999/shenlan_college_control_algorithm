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

class ServiceProvidersRequest {
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
    // Serializes a message object of type ServiceProvidersRequest
    // Serialize message field [service]
    bufferOffset = _serializer.string(obj.service, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceProvidersRequest
    let len;
    let data = new ServiceProvidersRequest(null);
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
    return 'rosapi/ServiceProvidersRequest';
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
    const resolved = new ServiceProvidersRequest(null);
    if (msg.service !== undefined) {
      resolved.service = msg.service;
    }
    else {
      resolved.service = ''
    }

    return resolved;
    }
};

class ServiceProvidersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.providers = null;
    }
    else {
      if (initObj.hasOwnProperty('providers')) {
        this.providers = initObj.providers
      }
      else {
        this.providers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceProvidersResponse
    // Serialize message field [providers]
    bufferOffset = _arraySerializer.string(obj.providers, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceProvidersResponse
    let len;
    let data = new ServiceProvidersResponse(null);
    // Deserialize message field [providers]
    data.providers = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.providers.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/ServiceProvidersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '945f6849f44f061c178ab393b12c1358';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] providers
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceProvidersResponse(null);
    if (msg.providers !== undefined) {
      resolved.providers = msg.providers;
    }
    else {
      resolved.providers = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ServiceProvidersRequest,
  Response: ServiceProvidersResponse,
  md5sum() { return 'f30b41d5e347454ae5483ee95eef5cc6'; },
  datatype() { return 'rosapi/ServiceProviders'; }
};
