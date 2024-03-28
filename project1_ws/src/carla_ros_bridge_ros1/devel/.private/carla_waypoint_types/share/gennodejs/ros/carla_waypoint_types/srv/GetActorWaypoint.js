// Auto-generated. Do not edit!

// (in-package carla_waypoint_types.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let CarlaWaypoint = require('../msg/CarlaWaypoint.js');

//-----------------------------------------------------------

class GetActorWaypointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetActorWaypointRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetActorWaypointRequest
    let len;
    let data = new GetActorWaypointRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'carla_waypoint_types/GetActorWaypointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '309d4b30834b338cced19e5622a97a03';
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
    uint32 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetActorWaypointRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class GetActorWaypointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoint = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoint')) {
        this.waypoint = initObj.waypoint
      }
      else {
        this.waypoint = new CarlaWaypoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetActorWaypointResponse
    // Serialize message field [waypoint]
    bufferOffset = CarlaWaypoint.serialize(obj.waypoint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetActorWaypointResponse
    let len;
    let data = new GetActorWaypointResponse(null);
    // Deserialize message field [waypoint]
    data.waypoint = CarlaWaypoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 69;
  }

  static datatype() {
    // Returns string type for a service object
    return 'carla_waypoint_types/GetActorWaypointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1339f512e2455f75636d936d50861b4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    carla_waypoint_types/CarlaWaypoint waypoint
    
    ================================================================================
    MSG: carla_waypoint_types/CarlaWaypoint
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
    const resolved = new GetActorWaypointResponse(null);
    if (msg.waypoint !== undefined) {
      resolved.waypoint = CarlaWaypoint.Resolve(msg.waypoint)
    }
    else {
      resolved.waypoint = new CarlaWaypoint()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetActorWaypointRequest,
  Response: GetActorWaypointResponse,
  md5sum() { return 'bf5553e309a0529c4c0d999d00a8b367'; },
  datatype() { return 'carla_waypoint_types/GetActorWaypoint'; }
};
