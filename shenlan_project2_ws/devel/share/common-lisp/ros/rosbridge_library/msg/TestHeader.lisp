; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-msg)


;//! \htmlinclude TestHeader.msg.html

(cl:defclass <TestHeader> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass TestHeader (<TestHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-msg:<TestHeader> is deprecated: use rosbridge_library-msg:TestHeader instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TestHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-msg:header-val is deprecated.  Use rosbridge_library-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestHeader>) ostream)
  "Serializes a message object of type '<TestHeader>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestHeader>) istream)
  "Deserializes a message object of type '<TestHeader>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestHeader>)))
  "Returns string type for a message object of type '<TestHeader>"
  "rosbridge_library/TestHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestHeader)))
  "Returns string type for a message object of type 'TestHeader"
  "rosbridge_library/TestHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestHeader>)))
  "Returns md5sum for a message object of type '<TestHeader>"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestHeader)))
  "Returns md5sum for a message object of type 'TestHeader"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestHeader>)))
  "Returns full string definition for message of type '<TestHeader>"
  (cl:format cl:nil "std_msgs/Header header~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestHeader)))
  "Returns full string definition for message of type 'TestHeader"
  (cl:format cl:nil "std_msgs/Header header~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestHeader>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'TestHeader
    (cl:cons ':header (header msg))
))
