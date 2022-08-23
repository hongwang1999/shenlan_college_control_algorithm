; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude Services-request.msg.html

(cl:defclass <Services-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Services-request (<Services-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Services-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Services-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<Services-request> is deprecated: use rosapi-srv:Services-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Services-request>) ostream)
  "Serializes a message object of type '<Services-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Services-request>) istream)
  "Deserializes a message object of type '<Services-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Services-request>)))
  "Returns string type for a service object of type '<Services-request>"
  "rosapi/ServicesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Services-request)))
  "Returns string type for a service object of type 'Services-request"
  "rosapi/ServicesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Services-request>)))
  "Returns md5sum for a message object of type '<Services-request>"
  "e44a7e7bcb900acadbcc28b132378f0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Services-request)))
  "Returns md5sum for a message object of type 'Services-request"
  "e44a7e7bcb900acadbcc28b132378f0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Services-request>)))
  "Returns full string definition for message of type '<Services-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Services-request)))
  "Returns full string definition for message of type 'Services-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Services-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Services-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Services-request
))
;//! \htmlinclude Services-response.msg.html

(cl:defclass <Services-response> (roslisp-msg-protocol:ros-message)
  ((services
    :reader services
    :initarg :services
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Services-response (<Services-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Services-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Services-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<Services-response> is deprecated: use rosapi-srv:Services-response instead.")))

(cl:ensure-generic-function 'services-val :lambda-list '(m))
(cl:defmethod services-val ((m <Services-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:services-val is deprecated.  Use rosapi-srv:services instead.")
  (services m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Services-response>) ostream)
  "Serializes a message object of type '<Services-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Services-response>) istream)
  "Deserializes a message object of type '<Services-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Services-response>)))
  "Returns string type for a service object of type '<Services-response>"
  "rosapi/ServicesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Services-response)))
  "Returns string type for a service object of type 'Services-response"
  "rosapi/ServicesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Services-response>)))
  "Returns md5sum for a message object of type '<Services-response>"
  "e44a7e7bcb900acadbcc28b132378f0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Services-response)))
  "Returns md5sum for a message object of type 'Services-response"
  "e44a7e7bcb900acadbcc28b132378f0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Services-response>)))
  "Returns full string definition for message of type '<Services-response>"
  (cl:format cl:nil "string[] services~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Services-response)))
  "Returns full string definition for message of type 'Services-response"
  (cl:format cl:nil "string[] services~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Services-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'services) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Services-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Services-response
    (cl:cons ':services (services msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Services)))
  'Services-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Services)))
  'Services-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Services)))
  "Returns string type for a service object of type '<Services>"
  "rosapi/Services")