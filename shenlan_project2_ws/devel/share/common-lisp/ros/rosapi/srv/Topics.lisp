; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude Topics-request.msg.html

(cl:defclass <Topics-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Topics-request (<Topics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Topics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Topics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<Topics-request> is deprecated: use rosapi-srv:Topics-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Topics-request>) ostream)
  "Serializes a message object of type '<Topics-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Topics-request>) istream)
  "Deserializes a message object of type '<Topics-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Topics-request>)))
  "Returns string type for a service object of type '<Topics-request>"
  "rosapi/TopicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Topics-request)))
  "Returns string type for a service object of type 'Topics-request"
  "rosapi/TopicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Topics-request>)))
  "Returns md5sum for a message object of type '<Topics-request>"
  "d966d98fc333fa1f3135af765eac1ba8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Topics-request)))
  "Returns md5sum for a message object of type 'Topics-request"
  "d966d98fc333fa1f3135af765eac1ba8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Topics-request>)))
  "Returns full string definition for message of type '<Topics-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Topics-request)))
  "Returns full string definition for message of type 'Topics-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Topics-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Topics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Topics-request
))
;//! \htmlinclude Topics-response.msg.html

(cl:defclass <Topics-response> (roslisp-msg-protocol:ros-message)
  ((topics
    :reader topics
    :initarg :topics
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (types
    :reader types
    :initarg :types
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Topics-response (<Topics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Topics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Topics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<Topics-response> is deprecated: use rosapi-srv:Topics-response instead.")))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <Topics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:topics-val is deprecated.  Use rosapi-srv:topics instead.")
  (topics m))

(cl:ensure-generic-function 'types-val :lambda-list '(m))
(cl:defmethod types-val ((m <Topics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:types-val is deprecated.  Use rosapi-srv:types instead.")
  (types m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Topics-response>) ostream)
  "Serializes a message object of type '<Topics-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'topics))))
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
   (cl:slot-value msg 'topics))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'types))))
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
   (cl:slot-value msg 'types))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Topics-response>) istream)
  "Deserializes a message object of type '<Topics-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'topics) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'topics)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'types) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'types)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Topics-response>)))
  "Returns string type for a service object of type '<Topics-response>"
  "rosapi/TopicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Topics-response)))
  "Returns string type for a service object of type 'Topics-response"
  "rosapi/TopicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Topics-response>)))
  "Returns md5sum for a message object of type '<Topics-response>"
  "d966d98fc333fa1f3135af765eac1ba8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Topics-response)))
  "Returns md5sum for a message object of type 'Topics-response"
  "d966d98fc333fa1f3135af765eac1ba8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Topics-response>)))
  "Returns full string definition for message of type '<Topics-response>"
  (cl:format cl:nil "string[] topics~%string[] types~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Topics-response)))
  "Returns full string definition for message of type 'Topics-response"
  (cl:format cl:nil "string[] topics~%string[] types~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Topics-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'types) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Topics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Topics-response
    (cl:cons ':topics (topics msg))
    (cl:cons ':types (types msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Topics)))
  'Topics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Topics)))
  'Topics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Topics)))
  "Returns string type for a service object of type '<Topics>"
  "rosapi/Topics")