; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-srv)


;//! \htmlinclude TestRequestOnly-request.msg.html

(cl:defclass <TestRequestOnly-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass TestRequestOnly-request (<TestRequestOnly-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestRequestOnly-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestRequestOnly-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestRequestOnly-request> is deprecated: use rosbridge_library-srv:TestRequestOnly-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TestRequestOnly-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-srv:data-val is deprecated.  Use rosbridge_library-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestRequestOnly-request>) ostream)
  "Serializes a message object of type '<TestRequestOnly-request>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestRequestOnly-request>) istream)
  "Deserializes a message object of type '<TestRequestOnly-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestRequestOnly-request>)))
  "Returns string type for a service object of type '<TestRequestOnly-request>"
  "rosbridge_library/TestRequestOnlyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestRequestOnly-request)))
  "Returns string type for a service object of type 'TestRequestOnly-request"
  "rosbridge_library/TestRequestOnlyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestRequestOnly-request>)))
  "Returns md5sum for a message object of type '<TestRequestOnly-request>"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestRequestOnly-request)))
  "Returns md5sum for a message object of type 'TestRequestOnly-request"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestRequestOnly-request>)))
  "Returns full string definition for message of type '<TestRequestOnly-request>"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestRequestOnly-request)))
  "Returns full string definition for message of type 'TestRequestOnly-request"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestRequestOnly-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestRequestOnly-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TestRequestOnly-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude TestRequestOnly-response.msg.html

(cl:defclass <TestRequestOnly-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TestRequestOnly-response (<TestRequestOnly-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestRequestOnly-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestRequestOnly-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestRequestOnly-response> is deprecated: use rosbridge_library-srv:TestRequestOnly-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestRequestOnly-response>) ostream)
  "Serializes a message object of type '<TestRequestOnly-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestRequestOnly-response>) istream)
  "Deserializes a message object of type '<TestRequestOnly-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestRequestOnly-response>)))
  "Returns string type for a service object of type '<TestRequestOnly-response>"
  "rosbridge_library/TestRequestOnlyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestRequestOnly-response)))
  "Returns string type for a service object of type 'TestRequestOnly-response"
  "rosbridge_library/TestRequestOnlyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestRequestOnly-response>)))
  "Returns md5sum for a message object of type '<TestRequestOnly-response>"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestRequestOnly-response)))
  "Returns md5sum for a message object of type 'TestRequestOnly-response"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestRequestOnly-response>)))
  "Returns full string definition for message of type '<TestRequestOnly-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestRequestOnly-response)))
  "Returns full string definition for message of type 'TestRequestOnly-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestRequestOnly-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestRequestOnly-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TestRequestOnly-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TestRequestOnly)))
  'TestRequestOnly-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TestRequestOnly)))
  'TestRequestOnly-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestRequestOnly)))
  "Returns string type for a service object of type '<TestRequestOnly>"
  "rosbridge_library/TestRequestOnly")