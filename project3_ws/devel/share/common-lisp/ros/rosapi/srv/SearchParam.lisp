; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude SearchParam-request.msg.html

(cl:defclass <SearchParam-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass SearchParam-request (<SearchParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SearchParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SearchParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<SearchParam-request> is deprecated: use rosapi-srv:SearchParam-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SearchParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:name-val is deprecated.  Use rosapi-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SearchParam-request>) ostream)
  "Serializes a message object of type '<SearchParam-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SearchParam-request>) istream)
  "Deserializes a message object of type '<SearchParam-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SearchParam-request>)))
  "Returns string type for a service object of type '<SearchParam-request>"
  "rosapi/SearchParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SearchParam-request)))
  "Returns string type for a service object of type 'SearchParam-request"
  "rosapi/SearchParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SearchParam-request>)))
  "Returns md5sum for a message object of type '<SearchParam-request>"
  "dfadc39f113c1cc6d7759508d8461d5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SearchParam-request)))
  "Returns md5sum for a message object of type 'SearchParam-request"
  "dfadc39f113c1cc6d7759508d8461d5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SearchParam-request>)))
  "Returns full string definition for message of type '<SearchParam-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SearchParam-request)))
  "Returns full string definition for message of type 'SearchParam-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SearchParam-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SearchParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SearchParam-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude SearchParam-response.msg.html

(cl:defclass <SearchParam-response> (roslisp-msg-protocol:ros-message)
  ((global_name
    :reader global_name
    :initarg :global_name
    :type cl:string
    :initform ""))
)

(cl:defclass SearchParam-response (<SearchParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SearchParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SearchParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<SearchParam-response> is deprecated: use rosapi-srv:SearchParam-response instead.")))

(cl:ensure-generic-function 'global_name-val :lambda-list '(m))
(cl:defmethod global_name-val ((m <SearchParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:global_name-val is deprecated.  Use rosapi-srv:global_name instead.")
  (global_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SearchParam-response>) ostream)
  "Serializes a message object of type '<SearchParam-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'global_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'global_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SearchParam-response>) istream)
  "Deserializes a message object of type '<SearchParam-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'global_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'global_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SearchParam-response>)))
  "Returns string type for a service object of type '<SearchParam-response>"
  "rosapi/SearchParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SearchParam-response)))
  "Returns string type for a service object of type 'SearchParam-response"
  "rosapi/SearchParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SearchParam-response>)))
  "Returns md5sum for a message object of type '<SearchParam-response>"
  "dfadc39f113c1cc6d7759508d8461d5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SearchParam-response)))
  "Returns md5sum for a message object of type 'SearchParam-response"
  "dfadc39f113c1cc6d7759508d8461d5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SearchParam-response>)))
  "Returns full string definition for message of type '<SearchParam-response>"
  (cl:format cl:nil "string global_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SearchParam-response)))
  "Returns full string definition for message of type 'SearchParam-response"
  (cl:format cl:nil "string global_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SearchParam-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'global_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SearchParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SearchParam-response
    (cl:cons ':global_name (global_name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SearchParam)))
  'SearchParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SearchParam)))
  'SearchParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SearchParam)))
  "Returns string type for a service object of type '<SearchParam>"
  "rosapi/SearchParam")