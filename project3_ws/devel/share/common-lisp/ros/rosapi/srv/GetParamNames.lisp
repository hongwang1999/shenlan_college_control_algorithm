; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude GetParamNames-request.msg.html

(cl:defclass <GetParamNames-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetParamNames-request (<GetParamNames-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetParamNames-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetParamNames-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<GetParamNames-request> is deprecated: use rosapi-srv:GetParamNames-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetParamNames-request>) ostream)
  "Serializes a message object of type '<GetParamNames-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetParamNames-request>) istream)
  "Deserializes a message object of type '<GetParamNames-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetParamNames-request>)))
  "Returns string type for a service object of type '<GetParamNames-request>"
  "rosapi/GetParamNamesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetParamNames-request)))
  "Returns string type for a service object of type 'GetParamNames-request"
  "rosapi/GetParamNamesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetParamNames-request>)))
  "Returns md5sum for a message object of type '<GetParamNames-request>"
  "dc7ae3609524b18034e49294a4ce670e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetParamNames-request)))
  "Returns md5sum for a message object of type 'GetParamNames-request"
  "dc7ae3609524b18034e49294a4ce670e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetParamNames-request>)))
  "Returns full string definition for message of type '<GetParamNames-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetParamNames-request)))
  "Returns full string definition for message of type 'GetParamNames-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetParamNames-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetParamNames-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetParamNames-request
))
;//! \htmlinclude GetParamNames-response.msg.html

(cl:defclass <GetParamNames-response> (roslisp-msg-protocol:ros-message)
  ((names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetParamNames-response (<GetParamNames-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetParamNames-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetParamNames-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<GetParamNames-response> is deprecated: use rosapi-srv:GetParamNames-response instead.")))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <GetParamNames-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:names-val is deprecated.  Use rosapi-srv:names instead.")
  (names m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetParamNames-response>) ostream)
  "Serializes a message object of type '<GetParamNames-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
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
   (cl:slot-value msg 'names))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetParamNames-response>) istream)
  "Deserializes a message object of type '<GetParamNames-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetParamNames-response>)))
  "Returns string type for a service object of type '<GetParamNames-response>"
  "rosapi/GetParamNamesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetParamNames-response)))
  "Returns string type for a service object of type 'GetParamNames-response"
  "rosapi/GetParamNamesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetParamNames-response>)))
  "Returns md5sum for a message object of type '<GetParamNames-response>"
  "dc7ae3609524b18034e49294a4ce670e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetParamNames-response)))
  "Returns md5sum for a message object of type 'GetParamNames-response"
  "dc7ae3609524b18034e49294a4ce670e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetParamNames-response>)))
  "Returns full string definition for message of type '<GetParamNames-response>"
  (cl:format cl:nil "string[] names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetParamNames-response)))
  "Returns full string definition for message of type 'GetParamNames-response"
  (cl:format cl:nil "string[] names~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetParamNames-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetParamNames-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetParamNames-response
    (cl:cons ':names (names msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetParamNames)))
  'GetParamNames-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetParamNames)))
  'GetParamNames-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetParamNames)))
  "Returns string type for a service object of type '<GetParamNames>"
  "rosapi/GetParamNames")