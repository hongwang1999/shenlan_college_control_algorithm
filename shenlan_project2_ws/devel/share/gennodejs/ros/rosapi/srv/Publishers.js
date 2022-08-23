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

class PublishersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic = null;
    }
    else {
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PublishersRequest
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PublishersRequest
    let len;
    let data = new PublishersRequest(null);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.topic);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/PublishersRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8f94bae31b356b24d0427f80426d0c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string topic
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PublishersRequest(null);
    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    return resolved;
    }
};

class PublishersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.publishers = null;
    }
    else {
      if (initObj.hasOwnProperty('publishers')) {
        this.publishers = initObj.publishers
      }
      else {
        this.publishers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PublishersResponse
    // Serialize message field [publishers]
    bufferOffset = _arraySerializer.string(obj.publishers, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PublishersResponse
    let len;
    let data = new PublishersResponse(null);
    // Deserialize message field [publishers]
    data.publishers = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.publishers.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/PublishersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '167d8030c4ca4018261dff8ae5083dc8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] publishers
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PublishersResponse(null);
    if (msg.publishers !== undefined) {
      resolved.publishers = msg.publishers;
    }
    else {
      resolved.publishers = []
    }

    return resolved;
    }
};

module.exports = {
  Request: PublishersRequest,
  Response: PublishersResponse,
  md5sum() { return 'cb37f09944e7ba1fc08ee38f7a94291d'; },
  datatype() { return 'rosapi/Publishers'; }
};
