; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude ServicesForType-request.msg.html

(cl:defclass <ServicesForType-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass ServicesForType-request (<ServicesForType-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServicesForType-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServicesForType-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<ServicesForType-request> is deprecated: use rosapi-srv:ServicesForType-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ServicesForType-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:type-val is deprecated.  Use rosapi-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServicesForType-request>) ostream)
  "Serializes a message object of type '<ServicesForType-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServicesForType-request>) istream)
  "Deserializes a message object of type '<ServicesForType-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServicesForType-request>)))
  "Returns string type for a service object of type '<ServicesForType-request>"
  "rosapi/ServicesForTypeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServicesForType-request)))
  "Returns string type for a service object of type 'ServicesForType-request"
  "rosapi/ServicesForTypeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServicesForType-request>)))
  "Returns md5sum for a message object of type '<ServicesForType-request>"
  "93e9fe8ae5a9136008e260fe510bd2b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServicesForType-request)))
  "Returns md5sum for a message object of type 'ServicesForType-request"
  "93e9fe8ae5a9136008e260fe510bd2b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServicesForType-request>)))
  "Returns full string definition for message of type '<ServicesForType-request>"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServicesForType-request)))
  "Returns full string definition for message of type 'ServicesForType-request"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServicesForType-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServicesForType-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServicesForType-request
    (cl:cons ':type (type msg))
))
;//! \htmlinclude ServicesForType-response.msg.html

(cl:defclass <ServicesForType-response> (roslisp-msg-protocol:ros-message)
  ((services
    :reader services
    :initarg :services
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass ServicesForType-response (<ServicesForType-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServicesForType-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServicesForType-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<ServicesForType-response> is deprecated: use rosapi-srv:ServicesForType-response instead.")))

(cl:ensure-generic-function 'services-val :lambda-list '(m))
(cl:defmethod services-val ((m <ServicesForType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:services-val is deprecated.  Use rosapi-srv:services instead.")
  (services m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServicesForType-response>) ostream)
  "Serializes a message object of type '<ServicesForType-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'services))))
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
   (cl:slot-value msg 'services))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServicesForType-response>) istream)
  "Deserializes a message object of type '<ServicesForType-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'services) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'services)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServicesForType-response>)))
  "Returns string type for a service object of type '<ServicesForType-response>"
  "rosapi/ServicesForTypeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServicesForType-response)))
  "Returns string type for a service object of type 'ServicesForType-response"
  "rosapi/ServicesForTypeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServicesForType-response>)))
  "Returns md5sum for a message object of type '<ServicesForType-response>"
  "93e9fe8ae5a9136008e260fe510bd2b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServicesForType-response)))
  "Returns md5sum for a message object of type 'ServicesForType-response"
  "93e9fe8ae5a9136008e260fe510bd2b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServicesForType-response>)))
  "Returns full string definition for message of type '<ServicesForType-response>"
  (cl:format cl:nil "string[] services~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServicesForType-response)))
  "Returns full string definition for message of type 'ServicesForType-response"
  (cl:format cl:nil "string[] services~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServicesForType-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'services) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServicesForType-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServicesForType-response
    (cl:cons ':services (services msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServicesForType)))
  'ServicesForType-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServicesForType)))
  'ServicesForType-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServicesForType)))
  "Returns string type for a service object of type '<ServicesForType>"
  "rosapi/ServicesForType")