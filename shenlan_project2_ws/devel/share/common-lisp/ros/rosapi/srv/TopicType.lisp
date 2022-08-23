; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude TopicType-request.msg.html

(cl:defclass <TopicType-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass TopicType-request (<TopicType-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicType-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicType-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<TopicType-request> is deprecated: use rosapi-srv:TopicType-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <TopicType-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:topic-val is deprecated.  Use rosapi-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicType-request>) ostream)
  "Serializes a message object of type '<TopicType-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicType-request>) istream)
  "Deserializes a message object of type '<TopicType-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicType-request>)))
  "Returns string type for a service object of type '<TopicType-request>"
  "rosapi/TopicTypeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicType-request)))
  "Returns string type for a service object of type 'TopicType-request"
  "rosapi/TopicTypeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicType-request>)))
  "Returns md5sum for a message object of type '<TopicType-request>"
  "0d30b3f53a0fd5036523a7141e524ddf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicType-request)))
  "Returns md5sum for a message object of type 'TopicType-request"
  "0d30b3f53a0fd5036523a7141e524ddf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicType-request>)))
  "Returns full string definition for message of type '<TopicType-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicType-request)))
  "Returns full string definition for message of type 'TopicType-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicType-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicType-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicType-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude TopicType-response.msg.html

(cl:defclass <TopicType-response> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass TopicType-response (<TopicType-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicType-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicType-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<TopicType-response> is deprecated: use rosapi-srv:TopicType-response instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <TopicType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:type-val is deprecated.  Use rosapi-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicType-response>) ostream)
  "Serializes a message object of type '<TopicType-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicType-response>) istream)
  "Deserializes a message object of type '<TopicType-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicType-response>)))
  "Returns string type for a service object of type '<TopicType-response>"
  "rosapi/TopicTypeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicType-response)))
  "Returns string type for a service object of type 'TopicType-response"
  "rosapi/TopicTypeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicType-response>)))
  "Returns md5sum for a message object of type '<TopicType-response>"
  "0d30b3f53a0fd5036523a7141e524ddf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicType-response)))
  "Returns md5sum for a message object of type 'TopicType-response"
  "0d30b3f53a0fd5036523a7141e524ddf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicType-response>)))
  "Returns full string definition for message of type '<TopicType-response>"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicType-response)))
  "Returns full string definition for message of type 'TopicType-response"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicType-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicType-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicType-response
    (cl:cons ':type (type msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TopicType)))
  'TopicType-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TopicType)))
  'TopicType-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicType)))
  "Returns string type for a service object of type '<TopicType>"
  "rosapi/TopicType")