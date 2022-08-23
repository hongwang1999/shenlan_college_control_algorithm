; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude Nodes-request.msg.html

(cl:defclass <Nodes-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Nodes-request (<Nodes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Nodes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Nodes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<Nodes-request> is deprecated: use rosapi-srv:Nodes-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Nodes-request>) ostream)
  "Serializes a message object of type '<Nodes-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Nodes-request>) istream)
  "Deserializes a message object of type '<Nodes-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Nodes-request>)))
  "Returns string type for a service object of type '<Nodes-request>"
  "rosapi/NodesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Nodes-request)))
  "Returns string type for a service object of type 'Nodes-request"
  "rosapi/NodesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Nodes-request>)))
  "Returns md5sum for a message object of type '<Nodes-request>"
  "3d07bfda1268b4f76b16b7ba8a82665d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Nodes-request)))
  "Returns md5sum for a message object of type 'Nodes-request"
  "3d07bfda1268b4f76b16b7ba8a82665d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Nodes-request>)))
  "Returns full string definition for message of type '<Nodes-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Nodes-request)))
  "Returns full string definition for message of type 'Nodes-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Nodes-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Nodes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Nodes-request
))
;//! \htmlinclude Nodes-response.msg.html

(cl:defclass <Nodes-response> (roslisp-msg-protocol:ros-message)
  ((nodes
    :reader nodes
    :initarg :nodes
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Nodes-response (<Nodes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Nodes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Nodes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<Nodes-response> is deprecated: use rosapi-srv:Nodes-response instead.")))

(cl:ensure-generic-function 'nodes-val :lambda-list '(m))
(cl:defmethod nodes-val ((m <Nodes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:nodes-val is deprecated.  Use rosapi-srv:nodes instead.")
  (nodes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Nodes-response>) ostream)
  "Serializes a message object of type '<Nodes-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nodes))))
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
   (cl:slot-value msg 'nodes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Nodes-response>) istream)
  "Deserializes a message object of type '<Nodes-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nodes)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Nodes-response>)))
  "Returns string type for a service object of type '<Nodes-response>"
  "rosapi/NodesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Nodes-response)))
  "Returns string type for a service object of type 'Nodes-response"
  "rosapi/NodesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Nodes-response>)))
  "Returns md5sum for a message object of type '<Nodes-response>"
  "3d07bfda1268b4f76b16b7ba8a82665d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Nodes-response)))
  "Returns md5sum for a message object of type 'Nodes-response"
  "3d07bfda1268b4f76b16b7ba8a82665d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Nodes-response>)))
  "Returns full string definition for message of type '<Nodes-response>"
  (cl:format cl:nil "string[] nodes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Nodes-response)))
  "Returns full string definition for message of type 'Nodes-response"
  (cl:format cl:nil "string[] nodes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Nodes-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Nodes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Nodes-response
    (cl:cons ':nodes (nodes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Nodes)))
  'Nodes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Nodes)))
  'Nodes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Nodes)))
  "Returns string type for a service object of type '<Nodes>"
  "rosapi/Nodes")