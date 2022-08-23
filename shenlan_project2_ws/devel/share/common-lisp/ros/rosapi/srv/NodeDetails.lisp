; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude NodeDetails-request.msg.html

(cl:defclass <NodeDetails-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:string
    :initform ""))
)

(cl:defclass NodeDetails-request (<NodeDetails-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeDetails-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeDetails-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<NodeDetails-request> is deprecated: use rosapi-srv:NodeDetails-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <NodeDetails-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:node-val is deprecated.  Use rosapi-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeDetails-request>) ostream)
  "Serializes a message object of type '<NodeDetails-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeDetails-request>) istream)
  "Deserializes a message object of type '<NodeDetails-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeDetails-request>)))
  "Returns string type for a service object of type '<NodeDetails-request>"
  "rosapi/NodeDetailsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeDetails-request)))
  "Returns string type for a service object of type 'NodeDetails-request"
  "rosapi/NodeDetailsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeDetails-request>)))
  "Returns md5sum for a message object of type '<NodeDetails-request>"
  "e1d0ced5ab8d5edb5fc09c98eb1d46f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeDetails-request)))
  "Returns md5sum for a message object of type 'NodeDetails-request"
  "e1d0ced5ab8d5edb5fc09c98eb1d46f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeDetails-request>)))
  "Returns full string definition for message of type '<NodeDetails-request>"
  (cl:format cl:nil "string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeDetails-request)))
  "Returns full string definition for message of type 'NodeDetails-request"
  (cl:format cl:nil "string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeDetails-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'node))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeDetails-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeDetails-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude NodeDetails-response.msg.html

(cl:defclass <NodeDetails-response> (roslisp-msg-protocol:ros-message)
  ((subscribing
    :reader subscribing
    :initarg :subscribing
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (publishing
    :reader publishing
    :initarg :publishing
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (services
    :reader services
    :initarg :services
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass NodeDetails-response (<NodeDetails-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeDetails-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeDetails-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<NodeDetails-response> is deprecated: use rosapi-srv:NodeDetails-response instead.")))

(cl:ensure-generic-function 'subscribing-val :lambda-list '(m))
(cl:defmethod subscribing-val ((m <NodeDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:subscribing-val is deprecated.  Use rosapi-srv:subscribing instead.")
  (subscribing m))

(cl:ensure-generic-function 'publishing-val :lambda-list '(m))
(cl:defmethod publishing-val ((m <NodeDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:publishing-val is deprecated.  Use rosapi-srv:publishing instead.")
  (publishing m))

(cl:ensure-generic-function 'services-val :lambda-list '(m))
(cl:defmethod services-val ((m <NodeDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:services-val is deprecated.  Use rosapi-srv:services instead.")
  (services m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeDetails-response>) ostream)
  "Serializes a message object of type '<NodeDetails-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'subscribing))))
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
   (cl:slot-value msg 'subscribing))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'publishing))))
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
   (cl:slot-value msg 'publishing))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeDetails-response>) istream)
  "Deserializes a message object of type '<NodeDetails-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'subscribing) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'subscribing)))
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
  (cl:setf (cl:slot-value msg 'publishing) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'publishing)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeDetails-response>)))
  "Returns string type for a service object of type '<NodeDetails-response>"
  "rosapi/NodeDetailsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeDetails-response)))
  "Returns string type for a service object of type 'NodeDetails-response"
  "rosapi/NodeDetailsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeDetails-response>)))
  "Returns md5sum for a message object of type '<NodeDetails-response>"
  "e1d0ced5ab8d5edb5fc09c98eb1d46f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeDetails-response)))
  "Returns md5sum for a message object of type 'NodeDetails-response"
  "e1d0ced5ab8d5edb5fc09c98eb1d46f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeDetails-response>)))
  "Returns full string definition for message of type '<NodeDetails-response>"
  (cl:format cl:nil "string[] subscribing~%string[] publishing~%string[] services~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeDetails-response)))
  "Returns full string definition for message of type 'NodeDetails-response"
  (cl:format cl:nil "string[] subscribing~%string[] publishing~%string[] services~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeDetails-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'subscribing) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'publishing) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'services) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeDetails-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeDetails-response
    (cl:cons ':subscribing (subscribing msg))
    (cl:cons ':publishing (publishing msg))
    (cl:cons ':services (services msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NodeDetails)))
  'NodeDetails-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NodeDetails)))
  'NodeDetails-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeDetails)))
  "Returns string type for a service object of type '<NodeDetails>"
  "rosapi/NodeDetails")