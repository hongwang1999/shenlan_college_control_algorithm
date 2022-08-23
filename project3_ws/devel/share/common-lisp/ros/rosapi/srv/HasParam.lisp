; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude HasParam-request.msg.html

(cl:defclass <HasParam-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass HasParam-request (<HasParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HasParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HasParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<HasParam-request> is deprecated: use rosapi-srv:HasParam-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <HasParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:name-val is deprecated.  Use rosapi-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HasParam-request>) ostream)
  "Serializes a message object of type '<HasParam-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HasParam-request>) istream)
  "Deserializes a message object of type '<HasParam-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HasParam-request>)))
  "Returns string type for a service object of type '<HasParam-request>"
  "rosapi/HasParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HasParam-request)))
  "Returns string type for a service object of type 'HasParam-request"
  "rosapi/HasParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HasParam-request>)))
  "Returns md5sum for a message object of type '<HasParam-request>"
  "ed3df286bd6dff9b961770f577454ea9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HasParam-request)))
  "Returns md5sum for a message object of type 'HasParam-request"
  "ed3df286bd6dff9b961770f577454ea9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HasParam-request>)))
  "Returns full string definition for message of type '<HasParam-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HasParam-request)))
  "Returns full string definition for message of type 'HasParam-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HasParam-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HasParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HasParam-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude HasParam-response.msg.html

(cl:defclass <HasParam-response> (roslisp-msg-protocol:ros-message)
  ((exists
    :reader exists
    :initarg :exists
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HasParam-response (<HasParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HasParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HasParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<HasParam-response> is deprecated: use rosapi-srv:HasParam-response instead.")))

(cl:ensure-generic-function 'exists-val :lambda-list '(m))
(cl:defmethod exists-val ((m <HasParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:exists-val is deprecated.  Use rosapi-srv:exists instead.")
  (exists m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HasParam-response>) ostream)
  "Serializes a message object of type '<HasParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'exists) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HasParam-response>) istream)
  "Deserializes a message object of type '<HasParam-response>"
    (cl:setf (cl:slot-value msg 'exists) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HasParam-response>)))
  "Returns string type for a service object of type '<HasParam-response>"
  "rosapi/HasParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HasParam-response)))
  "Returns string type for a service object of type 'HasParam-response"
  "rosapi/HasParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HasParam-response>)))
  "Returns md5sum for a message object of type '<HasParam-response>"
  "ed3df286bd6dff9b961770f577454ea9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HasParam-response)))
  "Returns md5sum for a message object of type 'HasParam-response"
  "ed3df286bd6dff9b961770f577454ea9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HasParam-response>)))
  "Returns full string definition for message of type '<HasParam-response>"
  (cl:format cl:nil "bool exists~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HasParam-response)))
  "Returns full string definition for message of type 'HasParam-response"
  (cl:format cl:nil "bool exists~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HasParam-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HasParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HasParam-response
    (cl:cons ':exists (exists msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HasParam)))
  'HasParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HasParam)))
  'HasParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HasParam)))
  "Returns string type for a service object of type '<HasParam>"
  "rosapi/HasParam")