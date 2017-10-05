// Auto-generated. Do not edit!

// (in-package arithmetic_node.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class arithmetic_reply {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.oper_type = null;
      this.answer = null;
      this.time_received = null;
      this.time_answered = null;
      this.process_time = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('oper_type')) {
        this.oper_type = initObj.oper_type
      }
      else {
        this.oper_type = '';
      }
      if (initObj.hasOwnProperty('answer')) {
        this.answer = initObj.answer
      }
      else {
        this.answer = 0.0;
      }
      if (initObj.hasOwnProperty('time_received')) {
        this.time_received = initObj.time_received
      }
      else {
        this.time_received = 0.0;
      }
      if (initObj.hasOwnProperty('time_answered')) {
        this.time_answered = initObj.time_answered
      }
      else {
        this.time_answered = 0.0;
      }
      if (initObj.hasOwnProperty('process_time')) {
        this.process_time = initObj.process_time
      }
      else {
        this.process_time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type arithmetic_reply
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [oper_type]
    bufferOffset = _serializer.string(obj.oper_type, buffer, bufferOffset);
    // Serialize message field [answer]
    bufferOffset = _serializer.float32(obj.answer, buffer, bufferOffset);
    // Serialize message field [time_received]
    bufferOffset = _serializer.float64(obj.time_received, buffer, bufferOffset);
    // Serialize message field [time_answered]
    bufferOffset = _serializer.float64(obj.time_answered, buffer, bufferOffset);
    // Serialize message field [process_time]
    bufferOffset = _serializer.float64(obj.process_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type arithmetic_reply
    let len;
    let data = new arithmetic_reply(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [oper_type]
    data.oper_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [answer]
    data.answer = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_received]
    data.time_received = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [time_answered]
    data.time_answered = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [process_time]
    data.process_time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.oper_type.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'arithmetic_node/arithmetic_reply';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cff965eb480643e73d2e8348f0d32d0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string oper_type
    float32 answer
    float64 time_received
    float64 time_answered
    float64 process_time
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new arithmetic_reply(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.oper_type !== undefined) {
      resolved.oper_type = msg.oper_type;
    }
    else {
      resolved.oper_type = ''
    }

    if (msg.answer !== undefined) {
      resolved.answer = msg.answer;
    }
    else {
      resolved.answer = 0.0
    }

    if (msg.time_received !== undefined) {
      resolved.time_received = msg.time_received;
    }
    else {
      resolved.time_received = 0.0
    }

    if (msg.time_answered !== undefined) {
      resolved.time_answered = msg.time_answered;
    }
    else {
      resolved.time_answered = 0.0
    }

    if (msg.process_time !== undefined) {
      resolved.process_time = msg.process_time;
    }
    else {
      resolved.process_time = 0.0
    }

    return resolved;
    }
};

module.exports = arithmetic_reply;
