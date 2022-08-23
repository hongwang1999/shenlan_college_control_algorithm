; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude TopicsForType-request.msg.html

(cl:defclass <TopicsForType-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass TopicsForType-request (<TopicsForType-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicsForType-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicsForType-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<TopicsForType-request> is deprecated: use rosapi-srv:TopicsForType-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <TopicsForType-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:type-val is deprecated.  Use rosapi-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicsForType-request>) ostream)
  "Serializes a message object of type '<TopicsForType-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicsForType-request>) istream)
  "Deserializes a message object of type '<TopicsForType-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicsForType-request>)))
  "Returns string type for a service object of type '<TopicsForType-request>"
  "rosapi/TopicsForTypeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicsForType-request)))
  "Returns string type for a service object of type 'TopicsForType-request"
  "rosapi/TopicsForTypeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicsForType-request>)))
  "Returns md5sum for a message object of type '<TopicsForType-request>"
  "56f77ff6da756dd27c1ed16ec721072a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicsForType-request)))
  "Returns md5sum for a message object of type 'TopicsForType-request"
  "56f77ff6da756dd27c1ed16ec721072a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicsForType-request>)))
  "Returns full string definition for message of type '<TopicsForType-request>"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicsForType-request)))
  "Returns full string definition for message of type 'TopicsForType-request"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicsForType-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicsForType-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicsForType-request
    (cl:cons ':type (type msg))
))
;//! \htmlinclude TopicsForType-response.msg.html

(cl:defclass <TopicsForType-response> (roslisp-msg-protocol:ros-message)
  ((topics
    :reader topics
    :initarg :topics
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass TopicsForType-response (<TopicsForType-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicsForType-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicsForType-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<TopicsForType-response> is deprecated: use rosapi-srv:TopicsForType-response instead.")))

(cl:ensure-generic-function 'topics-val :lambda-list '(m))
(cl:defmethod topics-val ((m <TopicsForType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:topics-val is deprecated.  Use rosapi-srv:topics instead.")
  (topics m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicsForType-response>) ostream)
  "Serializes a message object of type '<TopicsForType-response>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicsForType-response>) istream)
  "Deserializes a message object of type '<TopicsForType-response>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicsForType-response>)))
  "Returns string type for a service object of type '<TopicsForType-response>"
  "rosapi/TopicsForTypeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicsForType-response)))
  "Returns string type for a service object of type 'TopicsForType-response"
  "rosapi/TopicsForTypeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicsForType-response>)))
  "Returns md5sum for a message object of type '<TopicsForType-response>"
  "56f77ff6da756dd27c1ed16ec721072a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicsForType-response)))
  "Returns md5sum for a message object of type 'TopicsForType-response"
  "56f77ff6da756dd27c1ed16ec721072a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicsForType-response>)))
  "Returns full string definition for message of type '<TopicsForType-response>"
  (cl:format cl:nil "string[] topics~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicsForType-response)))
  "Returns full string definition for message of type 'TopicsForType-response"
  (cl:format cl:nil "string[] topics~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicsForType-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topics) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicsForType-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicsForType-response
    (cl:cons ':topics (topics msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TopicsForType)))
  'TopicsForType-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TopicsForType)))
  'TopicsForType-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicsForType)))
  "Returns string type for a service object of type '<TopicsForType>"
  "rosapi/TopicsForType")