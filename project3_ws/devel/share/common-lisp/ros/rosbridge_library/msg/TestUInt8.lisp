; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-msg)


;//! \htmlinclude TestUInt8.msg.html

(cl:defclass <TestUInt8> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass TestUInt8 (<TestUInt8>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestUInt8>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestUInt8)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-msg:<TestUInt8> is deprecated: use rosbridge_library-msg:TestUInt8 instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TestUInt8>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-msg:data-val is deprecated.  Use rosbridge_library-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestUInt8>) ostream)
  "Serializes a message object of type '<TestUInt8>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestUInt8>) istream)
  "Deserializes a message object of type '<TestUInt8>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestUInt8>)))
  "Returns string type for a message object of type '<TestUInt8>"
  "rosbridge_library/TestUInt8")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestUInt8)))
  "Returns string type for a message object of type 'TestUInt8"
  "rosbridge_library/TestUInt8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestUInt8>)))
  "Returns md5sum for a message object of type '<TestUInt8>"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestUInt8)))
  "Returns md5sum for a message object of type 'TestUInt8"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestUInt8>)))
  "Returns full string definition for message of type '<TestUInt8>"
  (cl:format cl:nil "uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestUInt8)))
  "Returns full string definition for message of type 'TestUInt8"
  (cl:format cl:nil "uint8[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestUInt8>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestUInt8>))
  "Converts a ROS message object to a list"
  (cl:list 'TestUInt8
    (cl:cons ':data (data msg))
))
