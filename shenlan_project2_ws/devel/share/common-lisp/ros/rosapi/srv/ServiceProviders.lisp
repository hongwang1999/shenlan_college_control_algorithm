; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude ServiceProviders-request.msg.html

(cl:defclass <ServiceProviders-request> (roslisp-msg-protocol:ros-message)
  ((service
    :reader service
    :initarg :service
    :type cl:string
    :initform ""))
)

(cl:defclass ServiceProviders-request (<ServiceProviders-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceProviders-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceProviders-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<ServiceProviders-request> is deprecated: use rosapi-srv:ServiceProviders-request instead.")))

(cl:ensure-generic-function 'service-val :lambda-list '(m))
(cl:defmethod service-val ((m <ServiceProviders-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:service-val is deprecated.  Use rosapi-srv:service instead.")
  (service m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceProviders-request>) ostream)
  "Serializes a message object of type '<ServiceProviders-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'service))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'service))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceProviders-request>) istream)
  "Deserializes a message object of type '<ServiceProviders-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceProviders-request>)))
  "Returns string type for a service object of type '<ServiceProviders-request>"
  "rosapi/ServiceProvidersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceProviders-request)))
  "Returns string type for a service object of type 'ServiceProviders-request"
  "rosapi/ServiceProvidersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceProviders-request>)))
  "Returns md5sum for a message object of type '<ServiceProviders-request>"
  "f30b41d5e347454ae5483ee95eef5cc6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceProviders-request)))
  "Returns md5sum for a message object of type 'ServiceProviders-request"
  "f30b41d5e347454ae5483ee95eef5cc6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceProviders-request>)))
  "Returns full string definition for message of type '<ServiceProviders-request>"
  (cl:format cl:nil "string service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceProviders-request)))
  "Returns full string definition for message of type 'ServiceProviders-request"
  (cl:format cl:nil "string service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceProviders-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'service))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceProviders-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceProviders-request
    (cl:cons ':service (service msg))
))
;//! \htmlinclude ServiceProviders-response.msg.html

(cl:defclass <ServiceProviders-response> (roslisp-msg-protocol:ros-message)
  ((providers
    :reader providers
    :initarg :providers
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ServiceProviders-response (<ServiceProviders-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceProviders-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceProviders-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<ServiceProviders-response> is deprecated: use rosapi-srv:ServiceProviders-response instead.")))

(cl:ensure-generic-function 'providers-val :lambda-list '(m))
(cl:defmethod providers-val ((m <ServiceProviders-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:providers-val is deprecated.  Use rosapi-srv:providers instead.")
  (providers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceProviders-response>) ostream)
  "Serializes a message object of type '<ServiceProviders-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'providers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'providers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceProviders-response>) istream)
  "Deserializes a message object of type '<ServiceProviders-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'providers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'providers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceProviders-response>)))
  "Returns string type for a service object of type '<ServiceProviders-response>"
  "rosapi/ServiceProvidersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceProviders-response)))
  "Returns string type for a service object of type 'ServiceProviders-response"
  "rosapi/ServiceProvidersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceProviders-response>)))
  "Returns md5sum for a message object of type '<ServiceProviders-response>"
  "f30b41d5e347454ae5483ee95eef5cc6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceProviders-response)))
  "Returns md5sum for a message object of type 'ServiceProviders-response"
  "f30b41d5e347454ae5483ee95eef5cc6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceProviders-response>)))
  "Returns full string definition for message of type '<ServiceProviders-response>"
  (cl:format cl:nil "string[] providers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceProviders-response)))
  "Returns full string definition for message of type 'ServiceProviders-response"
  (cl:format cl:nil "string[] providers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceProviders-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'providers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceProviders-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceProviders-response
    (cl:cons ':providers (providers msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServiceProviders)))
  'ServiceProviders-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServiceProviders)))
  'ServiceProviders-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceProviders)))
  "Returns string type for a service object of type '<ServiceProviders>"
  "rosapi/ServiceProviders")