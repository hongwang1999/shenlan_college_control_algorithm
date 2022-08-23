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

class ServicesForTypeRequest {
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
    // Serializes a message object of type ServicesForTypeRequest
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServicesForTypeRequest
    let len;
    let data = new ServicesForTypeRequest(null);
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
    return 'rosapi/ServicesForTypeRequest';
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
    const resolved = new ServicesForTypeRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    return resolved;
    }
};

class ServicesForTypeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.services = null;
    }
    else {
      if (initObj.hasOwnProperty('services')) {
        this.services = initObj.services
      }
      else {
        this.services = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServicesForTypeResponse
    // Serialize message field [services]
    bufferOffset = _arraySerializer.string(obj.services, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServicesForTypeResponse
    let len;
    let data = new ServicesForTypeResponse(null);
    // Deserialize message field [services]
    data.services = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.services.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/ServicesForTypeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e44a7e7bcb900acadbcc28b132378f0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] services
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServicesForTypeResponse(null);
    if (msg.services !== undefined) {
      resolved.services = msg.services;
    }
    else {
      resolved.services = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ServicesForTypeRequest,
  Response: ServicesForTypeResponse,
  md5sum() { return '93e9fe8ae5a9136008e260fe510bd2b0'; },
  datatype() { return 'rosapi/ServicesForType'; }
};
