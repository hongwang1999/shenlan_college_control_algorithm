; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude Publishers-request.msg.html

(cl:defclass <Publishers-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass Publishers-request (<Publishers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Publishers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Publishers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<Publishers-request> is deprecated: use rosapi-srv:Publishers-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <Publishers-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:topic-val is deprecated.  Use rosapi-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Publishers-request>) ostream)
  "Serializes a message object of type '<Publishers-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Publishers-request>) istream)
  "Deserializes a message object of type '<Publishers-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Publishers-request>)))
  "Returns string type for a service object of type '<Publishers-request>"
  "rosapi/PublishersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Publishers-request)))
  "Returns string type for a service object of type 'Publishers-request"
  "rosapi/PublishersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Publishers-request>)))
  "Returns md5sum for a message object of type '<Publishers-request>"
  "cb37f09944e7ba1fc08ee38f7a94291d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Publishers-request)))
  "Returns md5sum for a message object of type 'Publishers-request"
  "cb37f09944e7ba1fc08ee38f7a94291d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Publishers-request>)))
  "Returns full string definition for message of type '<Publishers-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Publishers-request)))
  "Returns full string definition for message of type 'Publishers-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Publishers-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Publishers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Publishers-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude Publishers-response.msg.html

(cl:defclass <Publishers-response> (roslisp-msg-protocol:ros-message)
  ((publishers
    :reader publishers
    :initarg :publishers
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Publishers-response (<Publishers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Publishers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Publishers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<Publishers-response> is deprecated: use rosapi-srv:Publishers-response instead.")))

(cl:ensure-generic-function 'publishers-val :lambda-list '(m))
(cl:defmethod publishers-val ((m <Publishers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:publishers-val is deprecated.  Use rosapi-srv:publishers instead.")
  (publishers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Publishers-response>) ostream)
  "Serializes a message object of type '<Publishers-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'publishers))))
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
   (cl:slot-value msg 'publishers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Publishers-response>) istream)
  "Deserializes a message object of type '<Publishers-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'publishers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'publishers)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Publishers-response>)))
  "Returns string type for a service object of type '<Publishers-response>"
  "rosapi/PublishersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Publishers-response)))
  "Returns string type for a service object of type 'Publishers-response"
  "rosapi/PublishersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Publishers-response>)))
  "Returns md5sum for a message object of type '<Publishers-response>"
  "cb37f09944e7ba1fc08ee38f7a94291d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Publishers-response)))
  "Returns md5sum for a message object of type 'Publishers-response"
  "cb37f09944e7ba1fc08ee38f7a94291d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Publishers-response>)))
  "Returns full string definition for message of type '<Publishers-response>"
  (cl:format cl:nil "string[] publishers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Publishers-response)))
  "Returns full string definition for message of type 'Publishers-response"
  (cl:format cl:nil "string[] publishers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Publishers-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'publishers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Publishers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Publishers-response
    (cl:cons ':publishers (publishers msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Publishers)))
  'Publishers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Publishers)))
  'Publishers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Publishers)))
  "Returns string type for a service object of type '<Publishers>"
  "rosapi/Publishers")