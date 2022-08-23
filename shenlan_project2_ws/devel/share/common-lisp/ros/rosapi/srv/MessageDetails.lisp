; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude MessageDetails-request.msg.html

(cl:defclass <MessageDetails-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass MessageDetails-request (<MessageDetails-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageDetails-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageDetails-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<MessageDetails-request> is deprecated: use rosapi-srv:MessageDetails-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MessageDetails-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:type-val is deprecated.  Use rosapi-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageDetails-request>) ostream)
  "Serializes a message object of type '<MessageDetails-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageDetails-request>) istream)
  "Deserializes a message object of type '<MessageDetails-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageDetails-request>)))
  "Returns string type for a service object of type '<MessageDetails-request>"
  "rosapi/MessageDetailsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageDetails-request)))
  "Returns string type for a service object of type 'MessageDetails-request"
  "rosapi/MessageDetailsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageDetails-request>)))
  "Returns md5sum for a message object of type '<MessageDetails-request>"
  "bdbf5d5ad601e3c2244ad2f8692bd791")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageDetails-request)))
  "Returns md5sum for a message object of type 'MessageDetails-request"
  "bdbf5d5ad601e3c2244ad2f8692bd791")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageDetails-request>)))
  "Returns full string definition for message of type '<MessageDetails-request>"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageDetails-request)))
  "Returns full string definition for message of type 'MessageDetails-request"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageDetails-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageDetails-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageDetails-request
    (cl:cons ':type (type msg))
))
;//! \htmlinclude MessageDetails-response.msg.html

(cl:defclass <MessageDetails-response> (roslisp-msg-protocol:ros-message)
  ((typedefs
    :reader typedefs
    :initarg :typedefs
    :type (cl:vector rosapi-msg:TypeDef)
   :initform (cl:make-array 0 :element-type 'rosapi-msg:TypeDef :initial-element (cl:make-instance 'rosapi-msg:TypeDef))))
)

(cl:defclass MessageDetails-response (<MessageDetails-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageDetails-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageDetails-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<MessageDetails-response> is deprecated: use rosapi-srv:MessageDetails-response instead.")))

(cl:ensure-generic-function 'typedefs-val :lambda-list '(m))
(cl:defmethod typedefs-val ((m <MessageDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:typedefs-val is deprecated.  Use rosapi-srv:typedefs instead.")
  (typedefs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageDetails-response>) ostream)
  "Serializes a message object of type '<MessageDetails-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'typedefs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'typedefs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageDetails-response>) istream)
  "Deserializes a message object of type '<MessageDetails-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'typedefs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'typedefs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rosapi-msg:TypeDef))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageDetails-response>)))
  "Returns string type for a service object of type '<MessageDetails-response>"
  "rosapi/MessageDetailsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageDetails-response)))
  "Returns string type for a service object of type 'MessageDetails-response"
  "rosapi/MessageDetailsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageDetails-response>)))
  "Returns md5sum for a message object of type '<MessageDetails-response>"
  "bdbf5d5ad601e3c2244ad2f8692bd791")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageDetails-response)))
  "Returns md5sum for a message object of type 'MessageDetails-response"
  "bdbf5d5ad601e3c2244ad2f8692bd791")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageDetails-response>)))
  "Returns full string definition for message of type '<MessageDetails-response>"
  (cl:format cl:nil "TypeDef[] typedefs~%~%================================================================================~%MSG: rosapi/TypeDef~%string type~%string[] fieldnames~%string[] fieldtypes~%int32[] fieldarraylen~%string[] examples~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageDetails-response)))
  "Returns full string definition for message of type 'MessageDetails-response"
  (cl:format cl:nil "TypeDef[] typedefs~%~%================================================================================~%MSG: rosapi/TypeDef~%string type~%string[] fieldnames~%string[] fieldtypes~%int32[] fieldarraylen~%string[] examples~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageDetails-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'typedefs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageDetails-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageDetails-response
    (cl:cons ':typedefs (typedefs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MessageDetails)))
  'MessageDetails-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MessageDetails)))
  'MessageDetails-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageDetails)))
  "Returns string type for a service object of type '<MessageDetails>"
  "rosapi/MessageDetails")