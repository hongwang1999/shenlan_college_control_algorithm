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

class NodeDetailsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node = null;
    }
    else {
      if (initObj.hasOwnProperty('node')) {
        this.node = initObj.node
      }
      else {
        this.node = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeDetailsRequest
    // Serialize message field [node]
    bufferOffset = _serializer.string(obj.node, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeDetailsRequest
    let len;
    let data = new NodeDetailsRequest(null);
    // Deserialize message field [node]
    data.node = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.node);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/NodeDetailsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a94c40e70a4b82863e6e52ec16732447';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string node
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeDetailsRequest(null);
    if (msg.node !== undefined) {
      resolved.node = msg.node;
    }
    else {
      resolved.node = ''
    }

    return resolved;
    }
};

class NodeDetailsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.subscribing = null;
      this.publishing = null;
      this.services = null;
    }
    else {
      if (initObj.hasOwnProperty('subscribing')) {
        this.subscribing = initObj.subscribing
      }
      else {
        this.subscribing = [];
      }
      if (initObj.hasOwnProperty('publishing')) {
        this.publishing = initObj.publishing
      }
      else {
        this.publishing = [];
      }
      if (initObj.hasOwnProperty('services')) {
        this.services = initObj.services
      }
      else {
        this.services = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeDetailsResponse
    // Serialize message field [subscribing]
    bufferOffset = _arraySerializer.string(obj.subscribing, buffer, bufferOffset, null);
    // Serialize message field [publishing]
    bufferOffset = _arraySerializer.string(obj.publishing, buffer, bufferOffset, null);
    // Serialize message field [services]
    bufferOffset = _arraySerializer.string(obj.services, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeDetailsResponse
    let len;
    let data = new NodeDetailsResponse(null);
    // Deserialize message field [subscribing]
    data.subscribing = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [publishing]
    data.publishing = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [services]
    data.services = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.subscribing.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.publishing.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.services.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/NodeDetailsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3da1cb16c6ec5885ad291735b6244a48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] subscribing
    string[] publishing
    string[] services
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeDetailsResponse(null);
    if (msg.subscribing !== undefined) {
      resolved.subscribing = msg.subscribing;
    }
    else {
      resolved.subscribing = []
    }

    if (msg.publishing !== undefined) {
      resolved.publishing = msg.publishing;
    }
    else {
      resolved.publishing = []
    }

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
  Request: NodeDetailsRequest,
  Response: NodeDetailsResponse,
  md5sum() { return 'e1d0ced5ab8d5edb5fc09c98eb1d46f6'; },
  datatype() { return 'rosapi/NodeDetails'; }
};
