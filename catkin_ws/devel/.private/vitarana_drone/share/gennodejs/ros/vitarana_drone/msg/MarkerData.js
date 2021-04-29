// Auto-generated. Do not edit!

// (in-package vitarana_drone.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MarkerData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.marker_id = null;
      this.err_x_m = null;
      this.err_y_m = null;
    }
    else {
      if (initObj.hasOwnProperty('marker_id')) {
        this.marker_id = initObj.marker_id
      }
      else {
        this.marker_id = 0;
      }
      if (initObj.hasOwnProperty('err_x_m')) {
        this.err_x_m = initObj.err_x_m
      }
      else {
        this.err_x_m = 0.0;
      }
      if (initObj.hasOwnProperty('err_y_m')) {
        this.err_y_m = initObj.err_y_m
      }
      else {
        this.err_y_m = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MarkerData
    // Serialize message field [marker_id]
    bufferOffset = _serializer.int8(obj.marker_id, buffer, bufferOffset);
    // Serialize message field [err_x_m]
    bufferOffset = _serializer.float64(obj.err_x_m, buffer, bufferOffset);
    // Serialize message field [err_y_m]
    bufferOffset = _serializer.float64(obj.err_y_m, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MarkerData
    let len;
    let data = new MarkerData(null);
    // Deserialize message field [marker_id]
    data.marker_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [err_x_m]
    data.err_x_m = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_y_m]
    data.err_y_m = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vitarana_drone/MarkerData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07f88596d90f2c67e8f564a8e85f1ff2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 marker_id
    float64 err_x_m
    float64 err_y_m
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MarkerData(null);
    if (msg.marker_id !== undefined) {
      resolved.marker_id = msg.marker_id;
    }
    else {
      resolved.marker_id = 0
    }

    if (msg.err_x_m !== undefined) {
      resolved.err_x_m = msg.err_x_m;
    }
    else {
      resolved.err_x_m = 0.0
    }

    if (msg.err_y_m !== undefined) {
      resolved.err_y_m = msg.err_y_m;
    }
    else {
      resolved.err_y_m = 0.0
    }

    return resolved;
    }
};

module.exports = MarkerData;
