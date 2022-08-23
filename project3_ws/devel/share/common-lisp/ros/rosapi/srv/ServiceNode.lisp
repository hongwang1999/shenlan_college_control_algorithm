; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude ServiceNode-request.msg.html

(cl:defclass <ServiceNode-request> (roslisp-msg-protocol:ros-message)
  ((service
    :reader service
    :initarg :service
    :type cl:string
    :initform ""))
)

(cl:defclass ServiceNode-request (<ServiceNode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceNode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceNode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<ServiceNode-request> is deprecated: use rosapi-srv:ServiceNode-request instead.")))

(cl:ensure-generic-function 'service-val :lambda-list '(m))
(cl:defmethod service-val ((m <ServiceNode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:service-val is deprecated.  Use rosapi-srv:service instead.")
  (service m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceNode-request>) ostream)
  "Serializes a message object of type '<ServiceNode-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'service))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'service))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceNode-request>) istream)
  "Deserializes a message object of type '<ServiceNode-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'service) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'service) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceNode-request>)))
  "Returns string type for a service object of type '<ServiceNode-request>"
  "rosapi/ServiceNodeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceNode-request)))
  "Returns string type for a service object of type 'ServiceNode-request"
  "rosapi/ServiceNodeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceNode-request>)))
  "Returns md5sum for a message object of type '<ServiceNode-request>"
  "bd2a0a45fd7a73a86c8d6051d5a6db8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceNode-request)))
  "Returns md5sum for a message object of type 'ServiceNode-request"
  "bd2a0a45fd7a73a86c8d6051d5a6db8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceNode-request>)))
  "Returns full string definition for message of type '<ServiceNode-request>"
  (cl:format cl:nil "string service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceNode-request)))
  "Returns full string definition for message of type 'ServiceNode-request"
  (cl:format cl:nil "string service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceNode-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'service))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceNode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceNode-request
    (cl:cons ':service (service msg))
))
;//! \htmlinclude ServiceNode-response.msg.html

(cl:defclass <ServiceNode-response> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:string
    :initform ""))
)

(cl:defclass ServiceNode-response (<ServiceNode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceNode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceNode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<ServiceNode-response> is deprecated: use rosapi-srv:ServiceNode-response instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <ServiceNode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:node-val is deprecated.  Use rosapi-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceNode-response>) ostream)
  "Serializes a message object of type '<ServiceNode-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceNode-response>) istream)
  "Deserializes a message object of type '<ServiceNode-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceNode-response>)))
  "Returns string type for a service object of type '<ServiceNode-response>"
  "rosapi/ServiceNodeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceNode-response)))
  "Returns string type for a service object of type 'ServiceNode-response"
  "rosapi/ServiceNodeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceNode-response>)))
  "Returns md5sum for a message object of type '<ServiceNode-response>"
  "bd2a0a45fd7a73a86c8d6051d5a6db8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceNode-response)))
  "Returns md5sum for a message object of type 'ServiceNode-response"
  "bd2a0a45fd7a73a86c8d6051d5a6db8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceNode-response>)))
  "Returns full string definition for message of type '<ServiceNode-response>"
  (cl:format cl:nil "string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceNode-response)))
  "Returns full string definition for message of type 'ServiceNode-response"
  (cl:format cl:nil "string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceNode-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'node))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceNode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceNode-response
    (cl:cons ':node (node msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServiceNode)))
  'ServiceNode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServiceNode)))
  'ServiceNode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceNode)))
  "Returns string type for a service object of type '<ServiceNode>"
  "rosapi/ServiceNode")