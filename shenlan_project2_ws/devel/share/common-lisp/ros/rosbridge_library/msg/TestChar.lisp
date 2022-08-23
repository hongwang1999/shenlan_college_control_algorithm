; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-msg)


;//! \htmlinclude TestChar.msg.html

(cl:defclass <TestChar> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass TestChar (<TestChar>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestChar>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestChar)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-msg:<TestChar> is deprecated: use rosbridge_library-msg:TestChar instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TestChar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-msg:data-val is deprecated.  Use rosbridge_library-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestChar>) ostream)
  "Serializes a message object of type '<TestChar>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestChar>) istream)
  "Deserializes a message object of type '<TestChar>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestChar>)))
  "Returns string type for a message object of type '<TestChar>"
  "rosbridge_library/TestChar")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestChar)))
  "Returns string type for a message object of type 'TestChar"
  "rosbridge_library/TestChar")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestChar>)))
  "Returns md5sum for a message object of type '<TestChar>"
  "7b8d15902c8b049d5a32b4cb73fa86f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestChar)))
  "Returns md5sum for a message object of type 'TestChar"
  "7b8d15902c8b049d5a32b4cb73fa86f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestChar>)))
  "Returns full string definition for message of type '<TestChar>"
  (cl:format cl:nil "char[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestChar)))
  "Returns full string definition for message of type 'TestChar"
  (cl:format cl:nil "char[] data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestChar>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestChar>))
  "Converts a ROS message object to a list"
  (cl:list 'TestChar
    (cl:cons ':data (data msg))
))
