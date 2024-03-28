// Auto-generated. Do not edit!

// (in-package carla_waypoint_types.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CarlaWaypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.road_id = null;
      this.section_id = null;
      this.lane_id = null;
      this.is_junction = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('road_id')) {
        this.road_id = initObj.road_id
      }
      else {
        this.road_id = 0;
      }
      if (initObj.hasOwnProperty('section_id')) {
        this.section_id = initObj.section_id
      }
      else {
        this.section_id = 0;
      }
      if (initObj.hasOwnProperty('lane_id')) {
        this.lane_id = initObj.lane_id
      }
      else {
        this.lane_id = 0;
      }
      if (initObj.hasOwnProperty('is_junction')) {
        this.is_junction = initObj.is_junction
      }
      else {
        this.is_junction = false;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarlaWaypoint
    // Serialize message field [road_id]
    bufferOffset = _serializer.int32(obj.road_id, buffer, bufferOffset);
    // Serialize message field [section_id]
    bufferOffset = _serializer.int32(obj.section_id, buffer, bufferOffset);
    // Serialize message field [lane_id]
    bufferOffset = _serializer.int32(obj.lane_id, buffer, bufferOffset);
    // Serialize message field [is_junction]
    bufferOffset = _serializer.bool(obj.is_junction, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarlaWaypoint
    let len;
    let data = new CarlaWaypoint(null);
    // Deserialize message field [road_id]
    data.road_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [section_id]
    data.section_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lane_id]
    data.lane_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [is_junction]
    data.is_junction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 69;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_waypoint_types/CarlaWaypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99235d247406855b2598c797ec698ae4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # Copyright (c) 2020 Intel Corporation.
    #
    # This work is licensed under the terms of the MIT license.
    # For a copy, see <https://opensource.org/licenses/MIT>.
    #
    
    int32 road_id
    int32 section_id
    int32 lane_id
    bool is_junction
    geometry_msgs/Pose pose
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarlaWaypoint(null);
    if (msg.road_id !== undefined) {
      resolved.road_id = msg.road_id;
    }
    else {
      resolved.road_id = 0
    }

    if (msg.section_id !== undefined) {
      resolved.section_id = msg.section_id;
    }
    else {
      resolved.section_id = 0
    }

    if (msg.lane_id !== undefined) {
      resolved.lane_id = msg.lane_id;
    }
    else {
      resolved.lane_id = 0
    }

    if (msg.is_junction !== undefined) {
      resolved.is_junction = msg.is_junction;
    }
    else {
      resolved.is_junction = false
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = CarlaWaypoint;
