; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude GetActionServers-request.msg.html

(cl:defclass <GetActionServers-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetActionServers-request (<GetActionServers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetActionServers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetActionServers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<GetActionServers-request> is deprecated: use rosapi-srv:GetActionServers-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetActionServers-request>) ostream)
  "Serializes a message object of type '<GetActionServers-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetActionServers-request>) istream)
  "Deserializes a message object of type '<GetActionServers-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetActionServers-request>)))
  "Returns string type for a service object of type '<GetActionServers-request>"
  "rosapi/GetActionServersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetActionServers-request)))
  "Returns string type for a service object of type 'GetActionServers-request"
  "rosapi/GetActionServersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetActionServers-request>)))
  "Returns md5sum for a message object of type '<GetActionServers-request>"
  "46807ba271844ac5ba4730a47556b236")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetActionServers-request)))
  "Returns md5sum for a message object of type 'GetActionServers-request"
  "46807ba271844ac5ba4730a47556b236")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetActionServers-request>)))
  "Returns full string definition for message of type '<GetActionServers-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetActionServers-request)))
  "Returns full string definition for message of type 'GetActionServers-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetActionServers-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetActionServers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetActionServers-request
))
;//! \htmlinclude GetActionServers-response.msg.html

(cl:defclass <GetActionServers-response> (roslisp-msg-protocol:ros-message)
  ((action_servers
    :reader action_servers
    :initarg :action_servers
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetActionServers-response (<GetActionServers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetActionServers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetActionServers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<GetActionServers-response> is deprecated: use rosapi-srv:GetActionServers-response instead.")))

(cl:ensure-generic-function 'action_servers-val :lambda-list '(m))
(cl:defmethod action_servers-val ((m <GetActionServers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:action_servers-val is deprecated.  Use rosapi-srv:action_servers instead.")
  (action_servers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetActionServers-response>) ostream)
  "Serializes a message object of type '<GetActionServers-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'action_servers))))
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
   (cl:slot-value msg 'action_servers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetActionServers-response>) istream)
  "Deserializes a message object of type '<GetActionServers-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'action_servers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'action_servers)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetActionServers-response>)))
  "Returns string type for a service object of type '<GetActionServers-response>"
  "rosapi/GetActionServersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetActionServers-response)))
  "Returns string type for a service object of type 'GetActionServers-response"
  "rosapi/GetActionServersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetActionServers-response>)))
  "Returns md5sum for a message object of type '<GetActionServers-response>"
  "46807ba271844ac5ba4730a47556b236")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetActionServers-response)))
  "Returns md5sum for a message object of type 'GetActionServers-response"
  "46807ba271844ac5ba4730a47556b236")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetActionServers-response>)))
  "Returns full string definition for message of type '<GetActionServers-response>"
  (cl:format cl:nil "string[] action_servers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetActionServers-response)))
  "Returns full string definition for message of type 'GetActionServers-response"
  (cl:format cl:nil "string[] action_servers~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetActionServers-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'action_servers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetActionServers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetActionServers-response
    (cl:cons ':action_servers (action_servers msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetActionServers)))
  'GetActionServers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetActionServers)))
  'GetActionServers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetActionServers)))
  "Returns string type for a service object of type '<GetActionServers>"
  "rosapi/GetActionServers")