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

class SearchParamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SearchParamRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SearchParamRequest
    let len;
    let data = new SearchParamRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/SearchParamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1f3d28f1b044c871e6eff2e9fc3c667';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SearchParamRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

class SearchParamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.global_name = null;
    }
    else {
      if (initObj.hasOwnProperty('global_name')) {
        this.global_name = initObj.global_name
      }
      else {
        this.global_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SearchParamResponse
    // Serialize message field [global_name]
    bufferOffset = _serializer.string(obj.global_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SearchParamResponse
    let len;
    let data = new SearchParamResponse(null);
    // Deserialize message field [global_name]
    data.global_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.global_name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/SearchParamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87c264f142c2aeca13349d90aeec0386';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string global_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SearchParamResponse(null);
    if (msg.global_name !== undefined) {
      resolved.global_name = msg.global_name;
    }
    else {
      resolved.global_name = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SearchParamRequest,
  Response: SearchParamResponse,
  md5sum() { return 'dfadc39f113c1cc6d7759508d8461d5a'; },
  datatype() { return 'rosapi/SearchParam'; }
};
