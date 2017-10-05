;; Auto-generated. Do not edit!


(when (boundp 'arithmetic_node::arithmetic_reply)
  (if (not (find-package "ARITHMETIC_NODE"))
    (make-package "ARITHMETIC_NODE"))
  (shadow 'arithmetic_reply (find-package "ARITHMETIC_NODE")))
(unless (find-package "ARITHMETIC_NODE::ARITHMETIC_REPLY")
  (make-package "ARITHMETIC_NODE::ARITHMETIC_REPLY"))

(in-package "ROS")
;;//! \htmlinclude arithmetic_reply.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass arithmetic_node::arithmetic_reply
  :super ros::object
  :slots (_header _oper_type _answer _time_received _time_answered _process_time ))

(defmethod arithmetic_node::arithmetic_reply
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:oper_type __oper_type) "")
    ((:answer __answer) 0.0)
    ((:time_received __time_received) 0.0)
    ((:time_answered __time_answered) 0.0)
    ((:process_time __process_time) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _oper_type (string __oper_type))
   (setq _answer (float __answer))
   (setq _time_received (float __time_received))
   (setq _time_answered (float __time_answered))
   (setq _process_time (float __process_time))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:oper_type
   (&optional __oper_type)
   (if __oper_type (setq _oper_type __oper_type)) _oper_type)
  (:answer
   (&optional __answer)
   (if __answer (setq _answer __answer)) _answer)
  (:time_received
   (&optional __time_received)
   (if __time_received (setq _time_received __time_received)) _time_received)
  (:time_answered
   (&optional __time_answered)
   (if __time_answered (setq _time_answered __time_answered)) _time_answered)
  (:process_time
   (&optional __process_time)
   (if __process_time (setq _process_time __process_time)) _process_time)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _oper_type
    4 (length _oper_type)
    ;; float32 _answer
    4
    ;; float64 _time_received
    8
    ;; float64 _time_answered
    8
    ;; float64 _process_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _oper_type
       (write-long (length _oper_type) s) (princ _oper_type s)
     ;; float32 _answer
       (sys::poke _answer (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _time_received
       (sys::poke _time_received (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _time_answered
       (sys::poke _time_answered (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _process_time
       (sys::poke _process_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _oper_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _oper_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _answer
     (setq _answer (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _time_received
     (setq _time_received (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _time_answered
     (setq _time_answered (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _process_time
     (setq _process_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get arithmetic_node::arithmetic_reply :md5sum-) "cff965eb480643e73d2e8348f0d32d0e")
(setf (get arithmetic_node::arithmetic_reply :datatype-) "arithmetic_node/arithmetic_reply")
(setf (get arithmetic_node::arithmetic_reply :definition-)
      "Header header
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

")



(provide :arithmetic_node/arithmetic_reply "cff965eb480643e73d2e8348f0d32d0e")


