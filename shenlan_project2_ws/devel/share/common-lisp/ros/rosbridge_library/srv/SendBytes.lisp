; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-srv)


;//! \htmlinclude SendBytes-request.msg.html

(cl:defclass <SendBytes-request> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0))
)

(cl:defclass SendBytes-request (<SendBytes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendBytes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendBytes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<SendBytes-request> is deprecated: use rosbridge_library-srv:SendBytes-request instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <SendBytes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-srv:count-val is deprecated.  Use rosbridge_library-srv:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendBytes-request>) ostream)
  "Serializes a message object of type '<SendBytes-request>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendBytes-request>) istream)
  "Deserializes a message object of type '<SendBytes-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendBytes-request>)))
  "Returns string type for a service object of type '<SendBytes-request>"
  "rosbridge_library/SendBytesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendBytes-request)))
  "Returns string type for a service object of type 'SendBytes-request"
  "rosbridge_library/SendBytesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendBytes-request>)))
  "Returns md5sum for a message object of type '<SendBytes-request>"
  "d875457256decc7436099d9d612ebf8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendBytes-request)))
  "Returns md5sum for a message object of type 'SendBytes-request"
  "d875457256decc7436099d9d612ebf8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendBytes-request>)))
  "Returns full string definition for message of type '<SendBytes-request>"
  (cl:format cl:nil "int64 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendBytes-request)))
  "Returns full string definition for message of type 'SendBytes-request"
  (cl:format cl:nil "int64 count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendBytes-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendBytes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SendBytes-request
    (cl:cons ':count (count msg))
))
;//! \htmlinclude SendBytes-response.msg.html

(cl:defclass <SendBytes-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass SendBytes-response (<SendBytes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SendBytes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SendBytes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<SendBytes-response> is deprecated: use rosbridge_library-srv:SendBytes-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SendBytes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-srv:data-val is deprecated.  Use rosbridge_library-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SendBytes-response>) ostream)
  "Serializes a message object of type '<SendBytes-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SendBytes-response>) istream)
  "Deserializes a message object of type '<SendBytes-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SendBytes-response>)))
  "Returns string type for a service object of type '<SendBytes-response>"
  "rosbridge_library/SendBytesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendBytes-response)))
  "Returns string type for a service object of type 'SendBytes-response"
  "rosbridge_library/SendBytesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SendBytes-response>)))
  "Returns md5sum for a message object of type '<SendBytes-response>"
  "d875457256decc7436099d9d612ebf8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SendBytes-response)))
  "Returns md5sum for a message object of type 'SendBytes-response"
  "d875457256decc7436099d9d612ebf8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SendBytes-response>)))
  "Returns full string definition for message of type '<SendBytes-response>"
  (cl:format cl:nil "string data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SendBytes-response)))
  "Returns full string definition for message of type 'SendBytes-response"
  (cl:format cl:nil "string data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SendBytes-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SendBytes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SendBytes-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SendBytes)))
  'SendBytes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SendBytes)))
  'SendBytes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SendBytes)))
  "Returns string type for a service object of type '<SendBytes>"
  "rosbridge_library/SendBytes")