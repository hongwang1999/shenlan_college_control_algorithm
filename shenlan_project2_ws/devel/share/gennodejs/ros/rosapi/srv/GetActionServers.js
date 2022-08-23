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

class GetActionServersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetActionServersRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetActionServersRequest
    let len;
    let data = new GetActionServersRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/GetActionServersRequest';
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
    const resolved = new GetActionServersRequest(null);
    return resolved;
    }
};

class GetActionServersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_servers = null;
    }
    else {
      if (initObj.hasOwnProperty('action_servers')) {
        this.action_servers = initObj.action_servers
      }
      else {
        this.action_servers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetActionServersResponse
    // Serialize message field [action_servers]
    bufferOffset = _arraySerializer.string(obj.action_servers, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetActionServersResponse
    let len;
    let data = new GetActionServersResponse(null);
    // Deserialize message field [action_servers]
    data.action_servers = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.action_servers.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/GetActionServersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46807ba271844ac5ba4730a47556b236';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] action_servers
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetActionServersResponse(null);
    if (msg.action_servers !== undefined) {
      resolved.action_servers = msg.action_servers;
    }
    else {
      resolved.action_servers = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetActionServersRequest,
  Response: GetActionServersResponse,
  md5sum() { return '46807ba271844ac5ba4730a47556b236'; },
  datatype() { return 'rosapi/GetActionServers'; }
};
