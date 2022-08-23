; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude Subscribers-request.msg.html

(cl:defclass <Subscribers-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass Subscribers-request (<Subscribers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Subscribers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Subscribers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<Subscribers-request> is deprecated: use rosapi-srv:Subscribers-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <Subscribers-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:topic-val is deprecated.  Use rosapi-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Subscribers-request>) ostream)
  "Serializes a message object of type '<Subscribers-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Subscribers-request>) istream)
  "Deserializes a message object of type '<Subscribers-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Subscribers-request>)))
  "Returns string type for a service object of type '<Subscribers-request>"
  "rosapi/SubscribersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Subscribers-request)))
  "Returns string type for a service object of type 'Subscribers-request"
  "rosapi/SubscribersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Subscribers-request>)))
  "Returns md5sum for a message object of type '<Subscribers-request>"
  "cb387b68f5b29bc1456398ee8476b973")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Subscribers-request)))
  "Returns md5sum for a message object of type 'Subscribers-request"
  "cb387b68f5b29bc1456398ee8476b973")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Subscribers-request>)))
  "Returns full string definition for message of type '<Subscribers-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Subscribers-request)))
  "Returns full string definition for message of type 'Subscribers-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Subscribers-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Subscribers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Subscribers-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude Subscribers-response.msg.html

(cl:defclass <Subscribers-response> (roslisp-msg-protocol:ros-message)
  ((subscribers
    :reader subscribers
    :initarg :subscribers
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Subscribers-response (<Subscribers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Subscribers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Subscribers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<Subscribers-response> is deprecated: use rosapi-srv:Subscribers-response instead.")))

(cl:ensure-generic-function 'subscribers-val :lambda-list '(m))
(cl:defmethod subscribers-val ((m <Subscribers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:subscribers-val is deprecated.  Use rosapi-srv:subscribers instead.")
  (subscribers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Subscribers-response>) ostream)
  "Serializes a message object of type '<Subscribers-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'subscribers))))
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
   (cl:slot-value msg 'subscribers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Subscribers-response>) istream)
  "Deserializes a message object of type '<Subscribers-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'subscribers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'subscribers)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Subscribers-response>)))
  "Returns string type for a service object of type '<Subscribers-response>"
  "rosapi/SubscribersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Subscribers-response)))
  "Returns string type for a service object of type 'Subscribers-response"
  "rosapi/SubscribersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Subscribers-response>)))
  "Returns md5sum for a message object of type '<Subscribers-response>"
  "cb387b68f5b29bc1456398ee8476b973")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Subscribers-response)))
  "Returns md5sum for a message object of type 'Subscribers-response"
  "cb387b68f5b29bc1456398ee8476b973")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Subscribers-response>)))
  "Returns full string definition for message of type '<Subscribers-response>"
  (cl:format cl:nil "string[] subscribers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Subscribers-response)))
  "Returns full string definition for message of type 'Subscribers-response"
  (cl:format cl:nil "string[] subscribers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Subscribers-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'subscribers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Subscribers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Subscribers-response
    (cl:cons ':subscribers (subscribers msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Subscribers)))
  'Subscribers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Subscribers)))
  'Subscribers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Subscribers)))
  "Returns string type for a service object of type '<Subscribers>"
  "rosapi/Subscribers")