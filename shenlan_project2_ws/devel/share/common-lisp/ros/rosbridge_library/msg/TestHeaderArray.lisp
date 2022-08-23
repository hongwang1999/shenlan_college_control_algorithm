; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-msg)


;//! \htmlinclude TestHeaderArray.msg.html

(cl:defclass <TestHeaderArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type (cl:vector std_msgs-msg:Header)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Header :initial-element (cl:make-instance 'std_msgs-msg:Header))))
)

(cl:defclass TestHeaderArray (<TestHeaderArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestHeaderArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestHeaderArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-msg:<TestHeaderArray> is deprecated: use rosbridge_library-msg:TestHeaderArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TestHeaderArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-msg:header-val is deprecated.  Use rosbridge_library-msg:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestHeaderArray>) ostream)
  "Serializes a message object of type '<TestHeaderArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'header))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'header))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestHeaderArray>) istream)
  "Deserializes a message object of type '<TestHeaderArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'header) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'header)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Header))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestHeaderArray>)))
  "Returns string type for a message object of type '<TestHeaderArray>"
  "rosbridge_library/TestHeaderArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestHeaderArray)))
  "Returns string type for a message object of type 'TestHeaderArray"
  "rosbridge_library/TestHeaderArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestHeaderArray>)))
  "Returns md5sum for a message object of type '<TestHeaderArray>"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestHeaderArray)))
  "Returns md5sum for a message object of type 'TestHeaderArray"
  "d7be0bb39af8fb9129d5a76e6b63a290")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestHeaderArray>)))
  "Returns full string definition for message of type '<TestHeaderArray>"
  (cl:format cl:nil "std_msgs/Header[] header~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestHeaderArray)))
  "Returns full string definition for message of type 'TestHeaderArray"
  (cl:format cl:nil "std_msgs/Header[] header~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestHeaderArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'header) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestHeaderArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TestHeaderArray
    (cl:cons ':header (header msg))
))
