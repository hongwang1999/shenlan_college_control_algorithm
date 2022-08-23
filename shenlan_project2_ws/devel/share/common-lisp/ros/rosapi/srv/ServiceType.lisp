; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude ServiceType-request.msg.html

(cl:defclass <ServiceType-request> (roslisp-msg-protocol:ros-message)
  ((service
    :reader service
    :initarg :service
    :type cl:string
    :initform ""))
)

(cl:defclass ServiceType-request (<ServiceType-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceType-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceType-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<ServiceType-request> is deprecated: use rosapi-srv:ServiceType-request instead.")))

(cl:ensure-generic-function 'service-val :lambda-list '(m))
(cl:defmethod service-val ((m <ServiceType-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:service-val is deprecated.  Use rosapi-srv:service instead.")
  (service m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceType-request>) ostream)
  "Serializes a message object of type '<ServiceType-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'service))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'service))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceType-request>) istream)
  "Deserializes a message object of type '<ServiceType-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceType-request>)))
  "Returns string type for a service object of type '<ServiceType-request>"
  "rosapi/ServiceTypeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceType-request)))
  "Returns string type for a service object of type 'ServiceType-request"
  "rosapi/ServiceTypeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceType-request>)))
  "Returns md5sum for a message object of type '<ServiceType-request>"
  "0e24a2dcdf70e483afc092a35a1f15f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceType-request)))
  "Returns md5sum for a message object of type 'ServiceType-request"
  "0e24a2dcdf70e483afc092a35a1f15f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceType-request>)))
  "Returns full string definition for message of type '<ServiceType-request>"
  (cl:format cl:nil "string service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceType-request)))
  "Returns full string definition for message of type 'ServiceType-request"
  (cl:format cl:nil "string service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceType-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'service))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceType-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceType-request
    (cl:cons ':service (service msg))
))
;//! \htmlinclude ServiceType-response.msg.html

(cl:defclass <ServiceType-response> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass ServiceType-response (<ServiceType-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceType-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceType-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<ServiceType-response> is deprecated: use rosapi-srv:ServiceType-response instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ServiceType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:type-val is deprecated.  Use rosapi-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceType-response>) ostream)
  "Serializes a message object of type '<ServiceType-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceType-response>) istream)
  "Deserializes a message object of type '<ServiceType-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceType-response>)))
  "Returns string type for a service object of type '<ServiceType-response>"
  "rosapi/ServiceTypeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceType-response)))
  "Returns string type for a service object of type 'ServiceType-response"
  "rosapi/ServiceTypeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceType-response>)))
  "Returns md5sum for a message object of type '<ServiceType-response>"
  "0e24a2dcdf70e483afc092a35a1f15f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceType-response)))
  "Returns md5sum for a message object of type 'ServiceType-response"
  "0e24a2dcdf70e483afc092a35a1f15f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceType-response>)))
  "Returns full string definition for message of type '<ServiceType-response>"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceType-response)))
  "Returns full string definition for message of type 'ServiceType-response"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceType-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceType-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceType-response
    (cl:cons ':type (type msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServiceType)))
  'ServiceType-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServiceType)))
  'ServiceType-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceType)))
  "Returns string type for a service object of type '<ServiceType>"
  "rosapi/ServiceType")