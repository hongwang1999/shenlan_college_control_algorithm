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

class SubscribersRequest {
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
    // Serializes a message object of type SubscribersRequest
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubscribersRequest
    let len;
    let data = new SubscribersRequest(null);
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
    return 'rosapi/SubscribersRequest';
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
    const resolved = new SubscribersRequest(null);
    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    return resolved;
    }
};

class SubscribersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.subscribers = null;
    }
    else {
      if (initObj.hasOwnProperty('subscribers')) {
        this.subscribers = initObj.subscribers
      }
      else {
        this.subscribers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubscribersResponse
    // Serialize message field [subscribers]
    bufferOffset = _arraySerializer.string(obj.subscribers, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubscribersResponse
    let len;
    let data = new SubscribersResponse(null);
    // Deserialize message field [subscribers]
    data.subscribers = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.subscribers.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rosapi/SubscribersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22418cab5ba9531d8c2b738b4e56153b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] subscribers
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubscribersResponse(null);
    if (msg.subscribers !== undefined) {
      resolved.subscribers = msg.subscribers;
    }
    else {
      resolved.subscribers = []
    }

    return resolved;
    }
};

module.exports = {
  Request: SubscribersRequest,
  Response: SubscribersResponse,
  md5sum() { return 'cb387b68f5b29bc1456398ee8476b973'; },
  datatype() { return 'rosapi/Subscribers'; }
};
