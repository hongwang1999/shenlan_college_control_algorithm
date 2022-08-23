; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-msg)


;//! \htmlinclude TestUInt8FixedSizeArray16.msg.html

(cl:defclass <TestUInt8FixedSizeArray16> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 16 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass TestUInt8FixedSizeArray16 (<TestUInt8FixedSizeArray16>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestUInt8FixedSizeArray16>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestUInt8FixedSizeArray16)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-msg:<TestUInt8FixedSizeArray16> is deprecated: use rosbridge_library-msg:TestUInt8FixedSizeArray16 instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TestUInt8FixedSizeArray16>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-msg:data-val is deprecated.  Use rosbridge_library-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestUInt8FixedSizeArray16>) ostream)
  "Serializes a message object of type '<TestUInt8FixedSizeArray16>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestUInt8FixedSizeArray16>) istream)
  "Deserializes a message object of type '<TestUInt8FixedSizeArray16>"
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 16)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestUInt8FixedSizeArray16>)))
  "Returns string type for a message object of type '<TestUInt8FixedSizeArray16>"
  "rosbridge_library/TestUInt8FixedSizeArray16")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestUInt8FixedSizeArray16)))
  "Returns string type for a message object of type 'TestUInt8FixedSizeArray16"
  "rosbridge_library/TestUInt8FixedSizeArray16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestUInt8FixedSizeArray16>)))
  "Returns md5sum for a message object of type '<TestUInt8FixedSizeArray16>"
  "a4e84d0a73514dfe9696b4796e8755e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestUInt8FixedSizeArray16)))
  "Returns md5sum for a message object of type 'TestUInt8FixedSizeArray16"
  "a4e84d0a73514dfe9696b4796e8755e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestUInt8FixedSizeArray16>)))
  "Returns full string definition for message of type '<TestUInt8FixedSizeArray16>"
  (cl:format cl:nil "uint8[16] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestUInt8FixedSizeArray16)))
  "Returns full string definition for message of type 'TestUInt8FixedSizeArray16"
  (cl:format cl:nil "uint8[16] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestUInt8FixedSizeArray16>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestUInt8FixedSizeArray16>))
  "Converts a ROS message object to a list"
  (cl:list 'TestUInt8FixedSizeArray16
    (cl:cons ':data (data msg))
))
