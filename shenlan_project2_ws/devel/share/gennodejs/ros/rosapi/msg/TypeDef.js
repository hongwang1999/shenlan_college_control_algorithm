// Auto-generated. Do not edit!

// (in-package rosapi.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TypeDef {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.fieldnames = null;
      this.fieldtypes = null;
      this.fieldarraylen = null;
      this.examples = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('fieldnames')) {
        this.fieldnames = initObj.fieldnames
      }
      else {
        this.fieldnames = [];
      }
      if (initObj.hasOwnProperty('fieldtypes')) {
        this.fieldtypes = initObj.fieldtypes
      }
      else {
        this.fieldtypes = [];
      }
      if (initObj.hasOwnProperty('fieldarraylen')) {
        this.fieldarraylen = initObj.fieldarraylen
      }
      else {
        this.fieldarraylen = [];
      }
      if (initObj.hasOwnProperty('examples')) {
        this.examples = initObj.examples
      }
      else {
        this.examples = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TypeDef
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [fieldnames]
    bufferOffset = _arraySerializer.string(obj.fieldnames, buffer, bufferOffset, null);
    // Serialize message field [fieldtypes]
    bufferOffset = _arraySerializer.string(obj.fieldtypes, buffer, bufferOffset, null);
    // Serialize message field [fieldarraylen]
    bufferOffset = _arraySerializer.int32(obj.fieldarraylen, buffer, bufferOffset, null);
    // Serialize message field [examples]
    bufferOffset = _arraySerializer.string(obj.examples, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TypeDef
    let len;
    let data = new TypeDef(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [fieldnames]
    data.fieldnames = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [fieldtypes]
    data.fieldtypes = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [fieldarraylen]
    data.fieldarraylen = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [examples]
    data.examples = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    object.fieldnames.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.fieldtypes.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.fieldarraylen.length;
    object.examples.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosapi/TypeDef';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd8529b0edb168fde8dd58032743f1f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TypeDef(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.fieldnames !== undefined) {
      resolved.fieldnames = msg.fieldnames;
    }
    else {
      resolved.fieldnames = []
    }

    if (msg.fieldtypes !== undefined) {
      resolved.fieldtypes = msg.fieldtypes;
    }
    else {
      resolved.fieldtypes = []
    }

    if (msg.fieldarraylen !== undefined) {
      resolved.fieldarraylen = msg.fieldarraylen;
    }
    else {
      resolved.fieldarraylen = []
    }

    if (msg.examples !== undefined) {
      resolved.examples = msg.examples;
    }
    else {
      resolved.examples = []
    }

    return resolved;
    }
};

module.exports = TypeDef;
