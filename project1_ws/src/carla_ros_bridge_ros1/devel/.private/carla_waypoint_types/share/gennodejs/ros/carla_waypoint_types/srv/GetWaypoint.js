// Auto-generated. Do not edit!

// (in-package carla_waypoint_types.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let CarlaWaypoint = require('../msg/CarlaWaypoint.js');

//-----------------------------------------------------------

class GetWaypointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location = null;
    }
    else {
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWaypointRequest
    // Serialize message field [location]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.location, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWaypointRequest
    let len;
    let data = new GetWaypointRequest(null);
    // Deserialize message field [location]
    data.location = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'carla_waypoint_types/GetWaypointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68ff00ebc14ac99f5a5137e25226d94e';
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
    geometry_msgs/Point location
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWaypointRequest(null);
    if (msg.location !== undefined) {
      resolved.location = geometry_msgs.msg.Point.Resolve(msg.location)
    }
    else {
      resolved.location = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class GetWaypointResponse {
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
    // Serializes a message object of type GetWaypointResponse
    // Serialize message field [waypoint]
    bufferOffset = CarlaWaypoint.serialize(obj.waypoint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWaypointResponse
    let len;
    let data = new GetWaypointResponse(null);
    // Deserialize message field [waypoint]
    data.waypoint = CarlaWaypoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 69;
  }

  static datatype() {
    // Returns string type for a service object
    return 'carla_waypoint_types/GetWaypointResponse';
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
    const resolved = new GetWaypointResponse(null);
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
  Request: GetWaypointRequest,
  Response: GetWaypointResponse,
  md5sum() { return '1a17497db7dec5ca2bffcbf2d6bc770d'; },
  datatype() { return 'carla_waypoint_types/GetWaypoint'; }
};
