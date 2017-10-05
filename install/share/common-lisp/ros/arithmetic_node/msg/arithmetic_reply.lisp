; Auto-generated. Do not edit!


(cl:in-package arithmetic_node-msg)


;//! \htmlinclude arithmetic_reply.msg.html

(cl:defclass <arithmetic_reply> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (oper_type
    :reader oper_type
    :initarg :oper_type
    :type cl:string
    :initform "")
   (answer
    :reader answer
    :initarg :answer
    :type cl:float
    :initform 0.0)
   (time_received
    :reader time_received
    :initarg :time_received
    :type cl:float
    :initform 0.0)
   (time_answered
    :reader time_answered
    :initarg :time_answered
    :type cl:float
    :initform 0.0)
   (process_time
    :reader process_time
    :initarg :process_time
    :type cl:float
    :initform 0.0))
)

(cl:defclass arithmetic_reply (<arithmetic_reply>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arithmetic_reply>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arithmetic_reply)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arithmetic_node-msg:<arithmetic_reply> is deprecated: use arithmetic_node-msg:arithmetic_reply instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <arithmetic_reply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arithmetic_node-msg:header-val is deprecated.  Use arithmetic_node-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'oper_type-val :lambda-list '(m))
(cl:defmethod oper_type-val ((m <arithmetic_reply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arithmetic_node-msg:oper_type-val is deprecated.  Use arithmetic_node-msg:oper_type instead.")
  (oper_type m))

(cl:ensure-generic-function 'answer-val :lambda-list '(m))
(cl:defmethod answer-val ((m <arithmetic_reply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arithmetic_node-msg:answer-val is deprecated.  Use arithmetic_node-msg:answer instead.")
  (answer m))

(cl:ensure-generic-function 'time_received-val :lambda-list '(m))
(cl:defmethod time_received-val ((m <arithmetic_reply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arithmetic_node-msg:time_received-val is deprecated.  Use arithmetic_node-msg:time_received instead.")
  (time_received m))

(cl:ensure-generic-function 'time_answered-val :lambda-list '(m))
(cl:defmethod time_answered-val ((m <arithmetic_reply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arithmetic_node-msg:time_answered-val is deprecated.  Use arithmetic_node-msg:time_answered instead.")
  (time_answered m))

(cl:ensure-generic-function 'process_time-val :lambda-list '(m))
(cl:defmethod process_time-val ((m <arithmetic_reply>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arithmetic_node-msg:process_time-val is deprecated.  Use arithmetic_node-msg:process_time instead.")
  (process_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arithmetic_reply>) ostream)
  "Serializes a message object of type '<arithmetic_reply>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'oper_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'oper_type))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'answer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_received))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_answered))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'process_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arithmetic_reply>) istream)
  "Deserializes a message object of type '<arithmetic_reply>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'oper_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'oper_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'answer) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_received) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_answered) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'process_time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arithmetic_reply>)))
  "Returns string type for a message object of type '<arithmetic_reply>"
  "arithmetic_node/arithmetic_reply")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arithmetic_reply)))
  "Returns string type for a message object of type 'arithmetic_reply"
  "arithmetic_node/arithmetic_reply")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arithmetic_reply>)))
  "Returns md5sum for a message object of type '<arithmetic_reply>"
  "cff965eb480643e73d2e8348f0d32d0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arithmetic_reply)))
  "Returns md5sum for a message object of type 'arithmetic_reply"
  "cff965eb480643e73d2e8348f0d32d0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arithmetic_reply>)))
  "Returns full string definition for message of type '<arithmetic_reply>"
  (cl:format cl:nil "Header header~%string oper_type~%float32 answer~%float64 time_received~%float64 time_answered~%float64 process_time~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arithmetic_reply)))
  "Returns full string definition for message of type 'arithmetic_reply"
  (cl:format cl:nil "Header header~%string oper_type~%float32 answer~%float64 time_received~%float64 time_answered~%float64 process_time~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arithmetic_reply>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'oper_type))
     4
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arithmetic_reply>))
  "Converts a ROS message object to a list"
  (cl:list 'arithmetic_reply
    (cl:cons ':header (header msg))
    (cl:cons ':oper_type (oper_type msg))
    (cl:cons ':answer (answer msg))
    (cl:cons ':time_received (time_received msg))
    (cl:cons ':time_answered (time_answered msg))
    (cl:cons ':process_time (process_time msg))
))
