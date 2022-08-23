; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-srv)


;//! \htmlinclude TestRequestAndResponse-request.msg.html

(cl:defclass <TestRequestAndResponse-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass TestRequestAndResponse-request (<TestRequestAndResponse-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestRequestAndResponse-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestRequestAndResponse-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestRequestAndResponse-request> is deprecated: use rosbridge_library-srv:TestRequestAndResponse-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TestRequestAndResponse-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-srv:data-val is deprecated.  Use rosbridge_library-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestRequestAndResponse-request>) ostream)
  "Serializes a message object of type '<TestRequestAndResponse-request>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestRequestAndResponse-request>) istream)
  "Deserializes a message object of type '<TestRequestAndResponse-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestRequestAndResponse-request>)))
  "Returns string type for a service object of type '<TestRequestAndResponse-request>"
  "rosbridge_library/TestRequestAndResponseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestRequestAndResponse-request)))
  "Returns string type for a service object of type 'TestRequestAndResponse-request"
  "rosbridge_library/TestRequestAndResponseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestRequestAndResponse-request>)))
  "Returns md5sum for a message object of type '<TestRequestAndResponse-request>"
  "491d316f183df11876531749005b31d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestRequestAndResponse-request)))
  "Returns md5sum for a message object of type 'TestRequestAndResponse-request"
  "491d316f183df11876531749005b31d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestRequestAndResponse-request>)))
  "Returns full string definition for message of type '<TestRequestAndResponse-request>"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestRequestAndResponse-request)))
  "Returns full string definition for message of type 'TestRequestAndResponse-request"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestRequestAndResponse-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestRequestAndResponse-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TestRequestAndResponse-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude TestRequestAndResponse-response.msg.html

(cl:defclass <TestRequestAndResponse-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass TestRequestAndResponse-response (<TestRequestAndResponse-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestRequestAndResponse-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestRequestAndResponse-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestRequestAndResponse-response> is deprecated: use rosbridge_library-srv:TestRequestAndResponse-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TestRequestAndResponse-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-srv:data-val is deprecated.  Use rosbridge_library-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestRequestAndResponse-response>) ostream)
  "Serializes a message object of type '<TestRequestAndResponse-response>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestRequestAndResponse-response>) istream)
  "Deserializes a message object of type '<TestRequestAndResponse-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestRequestAndResponse-response>)))
  "Returns string type for a service object of type '<TestRequestAndResponse-response>"
  "rosbridge_library/TestRequestAndResponseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestRequestAndResponse-response)))
  "Returns string type for a service object of type 'TestRequestAndResponse-response"
  "rosbridge_library/TestRequestAndResponseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestRequestAndResponse-response>)))
  "Returns md5sum for a message object of type '<TestRequestAndResponse-response>"
  "491d316f183df11876531749005b31d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestRequestAndResponse-response)))
  "Returns md5sum for a message object of type 'TestRequestAndResponse-response"
  "491d316f183df11876531749005b31d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestRequestAndResponse-response>)))
  "Returns full string definition for message of type '<TestRequestAndResponse-response>"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestRequestAndResponse-response)))
  "Returns full string definition for message of type 'TestRequestAndResponse-response"
  (cl:format cl:nil "int32 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestRequestAndResponse-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestRequestAndResponse-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TestRequestAndResponse-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TestRequestAndResponse)))
  'TestRequestAndResponse-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TestRequestAndResponse)))
  'TestRequestAndResponse-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestRequestAndResponse)))
  "Returns string type for a service object of type '<TestRequestAndResponse>"
  "rosbridge_library/TestRequestAndResponse")