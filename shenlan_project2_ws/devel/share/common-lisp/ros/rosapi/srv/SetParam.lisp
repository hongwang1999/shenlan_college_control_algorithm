; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude SetParam-request.msg.html

(cl:defclass <SetParam-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:string
    :initform ""))
)

(cl:defclass SetParam-request (<SetParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<SetParam-request> is deprecated: use rosapi-srv:SetParam-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:name-val is deprecated.  Use rosapi-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:value-val is deprecated.  Use rosapi-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetParam-request>) ostream)
  "Serializes a message object of type '<SetParam-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetParam-request>) istream)
  "Deserializes a message object of type '<SetParam-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetParam-request>)))
  "Returns string type for a service object of type '<SetParam-request>"
  "rosapi/SetParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParam-request)))
  "Returns string type for a service object of type 'SetParam-request"
  "rosapi/SetParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetParam-request>)))
  "Returns md5sum for a message object of type '<SetParam-request>"
  "bc6ccc4a57f61779c8eaae61e9f422e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetParam-request)))
  "Returns md5sum for a message object of type 'SetParam-request"
  "bc6ccc4a57f61779c8eaae61e9f422e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetParam-request>)))
  "Returns full string definition for message of type '<SetParam-request>"
  (cl:format cl:nil "string name~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetParam-request)))
  "Returns full string definition for message of type 'SetParam-request"
  (cl:format cl:nil "string name~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetParam-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetParam-request
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude SetParam-response.msg.html

(cl:defclass <SetParam-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetParam-response (<SetParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<SetParam-response> is deprecated: use rosapi-srv:SetParam-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetParam-response>) ostream)
  "Serializes a message object of type '<SetParam-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetParam-response>) istream)
  "Deserializes a message object of type '<SetParam-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetParam-response>)))
  "Returns string type for a service object of type '<SetParam-response>"
  "rosapi/SetParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParam-response)))
  "Returns string type for a service object of type 'SetParam-response"
  "rosapi/SetParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetParam-response>)))
  "Returns md5sum for a message object of type '<SetParam-response>"
  "bc6ccc4a57f61779c8eaae61e9f422e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetParam-response)))
  "Returns md5sum for a message object of type 'SetParam-response"
  "bc6ccc4a57f61779c8eaae61e9f422e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetParam-response>)))
  "Returns full string definition for message of type '<SetParam-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetParam-response)))
  "Returns full string definition for message of type 'SetParam-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetParam-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetParam-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetParam)))
  'SetParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetParam)))
  'SetParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParam)))
  "Returns string type for a service object of type '<SetParam>"
  "rosapi/SetParam")