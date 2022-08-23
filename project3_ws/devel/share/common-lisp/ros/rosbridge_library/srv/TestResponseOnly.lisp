; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-srv)


;//! \htmlinclude TestResponseOnly-request.msg.html

(cl:defclass <TestResponseOnly-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TestResponseOnly-request (<TestResponseOnly-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestResponseOnly-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestResponseOnly-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestResponseOnly-request> is deprecated: use rosbridge_library-srv:TestResponseOnly-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestResponseOnly-request>) ostream)
  "Serializes a message object of type '<TestResponseOnly-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestResponseOnly-request>) istream)
  "Deserializes a message object of type '<TestResponseOnly-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestResponseOnly-request>)))
  "Returns string type for a service object of type '<TestResponseOnly-request>"
  "rosbridge_library/TestResponseOnlyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestResponseOnly-request)))
  "Returns string type for a service object of type 'TestResponseOnly-request"
  "rosbridge_library/TestResponseOnlyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestResponseOnly-request>)))
  "Returns md5sum for a message object of type '<TestResponseOnly-request>"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestResponseOnly-request)))
  "Returns md5sum for a message object of type 'TestResponseOnly-request"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestResponseOnly-request>)))
  "Returns full string definition for message of type '<TestResponseOnly-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestResponseOnly-request)))
  "Returns full string definition for message of type 'TestResponseOnly-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestResponseOnly-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestResponseOnly-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TestResponseOnly-request
))
;//! \htmlinclude TestResponseOnly-response.msg.html

(cl:defclass <TestResponseOnly-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass TestResponseOnly-response (<TestResponseOnly-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestResponseOnly-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestResponseOnly-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestResponseOnly-response> is deprecated: use rosbridge_library-srv:TestResponseOnly-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TestResponseOnly-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-srv:data-val is deprecated.  Use rosbridge_library-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestResponseOnly-response>) ostream)
  "Serializes a message object of type '<TestResponseOnly-response>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestResponseOnly-response>) istream)
  "Deserializes a message object of type '<TestResponseOnly-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestResponseOnly-response>)))
  "Returns string type for a service object of type '<TestResponseOnly-response>"
  "rosbridge_library/TestResponseOnlyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestResponseOnly-response)))
  "Returns string type for a service object of type 'TestResponseOnly-response"
  "rosbridge_library/TestResponseOnlyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestResponseOnly-response>)))
  "Returns md5sum for a message object of type '<TestResponseOnly-response>"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestResponseOnly-response)))
  "Returns md5sum for a message object of type 'TestResponseOnly-response"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestResponseOnly-response>)))
  "Returns full string definition for message of type '<TestResponseOnly-response>"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestResponseOnly-response)))
  "Returns full string definition for message of type 'TestResponseOnly-response"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestResponseOnly-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestResponseOnly-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TestResponseOnly-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TestResponseOnly)))
  'TestResponseOnly-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TestResponseOnly)))
  'TestResponseOnly-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestResponseOnly)))
  "Returns string type for a service object of type '<TestResponseOnly>"
  "rosbridge_library/TestResponseOnly")