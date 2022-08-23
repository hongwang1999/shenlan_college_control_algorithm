; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude DeleteParam-request.msg.html

(cl:defclass <DeleteParam-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteParam-request (<DeleteParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<DeleteParam-request> is deprecated: use rosapi-srv:DeleteParam-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DeleteParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:name-val is deprecated.  Use rosapi-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteParam-request>) ostream)
  "Serializes a message object of type '<DeleteParam-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteParam-request>) istream)
  "Deserializes a message object of type '<DeleteParam-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteParam-request>)))
  "Returns string type for a service object of type '<DeleteParam-request>"
  "rosapi/DeleteParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteParam-request)))
  "Returns string type for a service object of type 'DeleteParam-request"
  "rosapi/DeleteParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteParam-request>)))
  "Returns md5sum for a message object of type '<DeleteParam-request>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteParam-request)))
  "Returns md5sum for a message object of type 'DeleteParam-request"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteParam-request>)))
  "Returns full string definition for message of type '<DeleteParam-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteParam-request)))
  "Returns full string definition for message of type 'DeleteParam-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteParam-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteParam-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude DeleteParam-response.msg.html

(cl:defclass <DeleteParam-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass DeleteParam-response (<DeleteParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<DeleteParam-response> is deprecated: use rosapi-srv:DeleteParam-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteParam-response>) ostream)
  "Serializes a message object of type '<DeleteParam-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteParam-response>) istream)
  "Deserializes a message object of type '<DeleteParam-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteParam-response>)))
  "Returns string type for a service object of type '<DeleteParam-response>"
  "rosapi/DeleteParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteParam-response)))
  "Returns string type for a service object of type 'DeleteParam-response"
  "rosapi/DeleteParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteParam-response>)))
  "Returns md5sum for a message object of type '<DeleteParam-response>"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteParam-response)))
  "Returns md5sum for a message object of type 'DeleteParam-response"
  "c1f3d28f1b044c871e6eff2e9fc3c667")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteParam-response>)))
  "Returns full string definition for message of type '<DeleteParam-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteParam-response)))
  "Returns full string definition for message of type 'DeleteParam-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteParam-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteParam-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteParam)))
  'DeleteParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteParam)))
  'DeleteParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteParam)))
  "Returns string type for a service object of type '<DeleteParam>"
  "rosapi/DeleteParam")