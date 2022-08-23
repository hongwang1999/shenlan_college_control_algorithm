; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude ServiceHost-request.msg.html

(cl:defclass <ServiceHost-request> (roslisp-msg-protocol:ros-message)
  ((service
    :reader service
    :initarg :service
    :type cl:string
    :initform ""))
)

(cl:defclass ServiceHost-request (<ServiceHost-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceHost-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceHost-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<ServiceHost-request> is deprecated: use rosapi-srv:ServiceHost-request instead.")))

(cl:ensure-generic-function 'service-val :lambda-list '(m))
(cl:defmethod service-val ((m <ServiceHost-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:service-val is deprecated.  Use rosapi-srv:service instead.")
  (service m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceHost-request>) ostream)
  "Serializes a message object of type '<ServiceHost-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'service))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'service))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceHost-request>) istream)
  "Deserializes a message object of type '<ServiceHost-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceHost-request>)))
  "Returns string type for a service object of type '<ServiceHost-request>"
  "rosapi/ServiceHostRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceHost-request)))
  "Returns string type for a service object of type 'ServiceHost-request"
  "rosapi/ServiceHostRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceHost-request>)))
  "Returns md5sum for a message object of type '<ServiceHost-request>"
  "a1b60006f8ee69637c856c94dd192f5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceHost-request)))
  "Returns md5sum for a message object of type 'ServiceHost-request"
  "a1b60006f8ee69637c856c94dd192f5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceHost-request>)))
  "Returns full string definition for message of type '<ServiceHost-request>"
  (cl:format cl:nil "string service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceHost-request)))
  "Returns full string definition for message of type 'ServiceHost-request"
  (cl:format cl:nil "string service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceHost-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'service))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceHost-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceHost-request
    (cl:cons ':service (service msg))
))
;//! \htmlinclude ServiceHost-response.msg.html

(cl:defclass <ServiceHost-response> (roslisp-msg-protocol:ros-message)
  ((host
    :reader host
    :initarg :host
    :type cl:string
    :initform ""))
)

(cl:defclass ServiceHost-response (<ServiceHost-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceHost-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceHost-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<ServiceHost-response> is deprecated: use rosapi-srv:ServiceHost-response instead.")))

(cl:ensure-generic-function 'host-val :lambda-list '(m))
(cl:defmethod host-val ((m <ServiceHost-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:host-val is deprecated.  Use rosapi-srv:host instead.")
  (host m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceHost-response>) ostream)
  "Serializes a message object of type '<ServiceHost-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'host))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'host))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceHost-response>) istream)
  "Deserializes a message object of type '<ServiceHost-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'host) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'host) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceHost-response>)))
  "Returns string type for a service object of type '<ServiceHost-response>"
  "rosapi/ServiceHostResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceHost-response)))
  "Returns string type for a service object of type 'ServiceHost-response"
  "rosapi/ServiceHostResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceHost-response>)))
  "Returns md5sum for a message object of type '<ServiceHost-response>"
  "a1b60006f8ee69637c856c94dd192f5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceHost-response)))
  "Returns md5sum for a message object of type 'ServiceHost-response"
  "a1b60006f8ee69637c856c94dd192f5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceHost-response>)))
  "Returns full string definition for message of type '<ServiceHost-response>"
  (cl:format cl:nil "string host~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceHost-response)))
  "Returns full string definition for message of type 'ServiceHost-response"
  (cl:format cl:nil "string host~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceHost-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'host))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceHost-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceHost-response
    (cl:cons ':host (host msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServiceHost)))
  'ServiceHost-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServiceHost)))
  'ServiceHost-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceHost)))
  "Returns string type for a service object of type '<ServiceHost>"
  "rosapi/ServiceHost")