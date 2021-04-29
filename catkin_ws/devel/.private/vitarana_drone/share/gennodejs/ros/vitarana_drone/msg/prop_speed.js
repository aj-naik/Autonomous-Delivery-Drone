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

class prop_speed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prop1 = null;
      this.prop2 = null;
      this.prop3 = null;
      this.prop4 = null;
    }
    else {
      if (initObj.hasOwnProperty('prop1')) {
        this.prop1 = initObj.prop1
      }
      else {
        this.prop1 = 0.0;
      }
      if (initObj.hasOwnProperty('prop2')) {
        this.prop2 = initObj.prop2
      }
      else {
        this.prop2 = 0.0;
      }
      if (initObj.hasOwnProperty('prop3')) {
        this.prop3 = initObj.prop3
      }
      else {
        this.prop3 = 0.0;
      }
      if (initObj.hasOwnProperty('prop4')) {
        this.prop4 = initObj.prop4
      }
      else {
        this.prop4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type prop_speed
    // Serialize message field [prop1]
    bufferOffset = _serializer.float64(obj.prop1, buffer, bufferOffset);
    // Serialize message field [prop2]
    bufferOffset = _serializer.float64(obj.prop2, buffer, bufferOffset);
    // Serialize message field [prop3]
    bufferOffset = _serializer.float64(obj.prop3, buffer, bufferOffset);
    // Serialize message field [prop4]
    bufferOffset = _serializer.float64(obj.prop4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type prop_speed
    let len;
    let data = new prop_speed(null);
    // Deserialize message field [prop1]
    data.prop1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [prop2]
    data.prop2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [prop3]
    data.prop3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [prop4]
    data.prop4 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vitarana_drone/prop_speed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22246cf2b6038087c0c429c875fc8ffa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 prop1
    float64 prop2
    float64 prop3
    float64 prop4 
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new prop_speed(null);
    if (msg.prop1 !== undefined) {
      resolved.prop1 = msg.prop1;
    }
    else {
      resolved.prop1 = 0.0
    }

    if (msg.prop2 !== undefined) {
      resolved.prop2 = msg.prop2;
    }
    else {
      resolved.prop2 = 0.0
    }

    if (msg.prop3 !== undefined) {
      resolved.prop3 = msg.prop3;
    }
    else {
      resolved.prop3 = 0.0
    }

    if (msg.prop4 !== undefined) {
      resolved.prop4 = msg.prop4;
    }
    else {
      resolved.prop4 = 0.0
    }

    return resolved;
    }
};

module.exports = prop_speed;
