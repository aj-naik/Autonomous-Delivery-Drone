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

class edrone_cmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rcRoll = null;
      this.rcPitch = null;
      this.rcYaw = null;
      this.rcThrottle = null;
      this.aux1 = null;
      this.aux2 = null;
      this.aux3 = null;
      this.aux4 = null;
    }
    else {
      if (initObj.hasOwnProperty('rcRoll')) {
        this.rcRoll = initObj.rcRoll
      }
      else {
        this.rcRoll = 0.0;
      }
      if (initObj.hasOwnProperty('rcPitch')) {
        this.rcPitch = initObj.rcPitch
      }
      else {
        this.rcPitch = 0.0;
      }
      if (initObj.hasOwnProperty('rcYaw')) {
        this.rcYaw = initObj.rcYaw
      }
      else {
        this.rcYaw = 0.0;
      }
      if (initObj.hasOwnProperty('rcThrottle')) {
        this.rcThrottle = initObj.rcThrottle
      }
      else {
        this.rcThrottle = 0.0;
      }
      if (initObj.hasOwnProperty('aux1')) {
        this.aux1 = initObj.aux1
      }
      else {
        this.aux1 = 0.0;
      }
      if (initObj.hasOwnProperty('aux2')) {
        this.aux2 = initObj.aux2
      }
      else {
        this.aux2 = 0.0;
      }
      if (initObj.hasOwnProperty('aux3')) {
        this.aux3 = initObj.aux3
      }
      else {
        this.aux3 = 0.0;
      }
      if (initObj.hasOwnProperty('aux4')) {
        this.aux4 = initObj.aux4
      }
      else {
        this.aux4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type edrone_cmd
    // Serialize message field [rcRoll]
    bufferOffset = _serializer.float64(obj.rcRoll, buffer, bufferOffset);
    // Serialize message field [rcPitch]
    bufferOffset = _serializer.float64(obj.rcPitch, buffer, bufferOffset);
    // Serialize message field [rcYaw]
    bufferOffset = _serializer.float64(obj.rcYaw, buffer, bufferOffset);
    // Serialize message field [rcThrottle]
    bufferOffset = _serializer.float64(obj.rcThrottle, buffer, bufferOffset);
    // Serialize message field [aux1]
    bufferOffset = _serializer.float64(obj.aux1, buffer, bufferOffset);
    // Serialize message field [aux2]
    bufferOffset = _serializer.float64(obj.aux2, buffer, bufferOffset);
    // Serialize message field [aux3]
    bufferOffset = _serializer.float64(obj.aux3, buffer, bufferOffset);
    // Serialize message field [aux4]
    bufferOffset = _serializer.float64(obj.aux4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type edrone_cmd
    let len;
    let data = new edrone_cmd(null);
    // Deserialize message field [rcRoll]
    data.rcRoll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rcPitch]
    data.rcPitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rcYaw]
    data.rcYaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rcThrottle]
    data.rcThrottle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [aux1]
    data.aux1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [aux2]
    data.aux2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [aux3]
    data.aux3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [aux4]
    data.aux4 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vitarana_drone/edrone_cmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc07470079f832efd9aebe0e4687ea6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 rcRoll
    float64 rcPitch
    float64 rcYaw
    float64 rcThrottle
    float64 aux1
    float64 aux2
    float64 aux3
    float64 aux4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new edrone_cmd(null);
    if (msg.rcRoll !== undefined) {
      resolved.rcRoll = msg.rcRoll;
    }
    else {
      resolved.rcRoll = 0.0
    }

    if (msg.rcPitch !== undefined) {
      resolved.rcPitch = msg.rcPitch;
    }
    else {
      resolved.rcPitch = 0.0
    }

    if (msg.rcYaw !== undefined) {
      resolved.rcYaw = msg.rcYaw;
    }
    else {
      resolved.rcYaw = 0.0
    }

    if (msg.rcThrottle !== undefined) {
      resolved.rcThrottle = msg.rcThrottle;
    }
    else {
      resolved.rcThrottle = 0.0
    }

    if (msg.aux1 !== undefined) {
      resolved.aux1 = msg.aux1;
    }
    else {
      resolved.aux1 = 0.0
    }

    if (msg.aux2 !== undefined) {
      resolved.aux2 = msg.aux2;
    }
    else {
      resolved.aux2 = 0.0
    }

    if (msg.aux3 !== undefined) {
      resolved.aux3 = msg.aux3;
    }
    else {
      resolved.aux3 = 0.0
    }

    if (msg.aux4 !== undefined) {
      resolved.aux4 = msg.aux4;
    }
    else {
      resolved.aux4 = 0.0
    }

    return resolved;
    }
};

module.exports = edrone_cmd;
