; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude ServiceResponseDetails-request.msg.html

(cl:defclass <ServiceResponseDetails-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass ServiceResponseDetails-request (<ServiceResponseDetails-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceResponseDetails-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceResponseDetails-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<ServiceResponseDetails-request> is deprecated: use rosapi-srv:ServiceResponseDetails-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ServiceResponseDetails-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:type-val is deprecated.  Use rosapi-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceResponseDetails-request>) ostream)
  "Serializes a message object of type '<ServiceResponseDetails-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceResponseDetails-request>) istream)
  "Deserializes a message object of type '<ServiceResponseDetails-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceResponseDetails-request>)))
  "Returns string type for a service object of type '<ServiceResponseDetails-request>"
  "rosapi/ServiceResponseDetailsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceResponseDetails-request)))
  "Returns string type for a service object of type 'ServiceResponseDetails-request"
  "rosapi/ServiceResponseDetailsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceResponseDetails-request>)))
  "Returns md5sum for a message object of type '<ServiceResponseDetails-request>"
  "bdbf5d5ad601e3c2244ad2f8692bd791")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceResponseDetails-request)))
  "Returns md5sum for a message object of type 'ServiceResponseDetails-request"
  "bdbf5d5ad601e3c2244ad2f8692bd791")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceResponseDetails-request>)))
  "Returns full string definition for message of type '<ServiceResponseDetails-request>"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceResponseDetails-request)))
  "Returns full string definition for message of type 'ServiceResponseDetails-request"
  (cl:format cl:nil "string type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceResponseDetails-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceResponseDetails-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceResponseDetails-request
    (cl:cons ':type (type msg))
))
;//! \htmlinclude ServiceResponseDetails-response.msg.html

(cl:defclass <ServiceResponseDetails-response> (roslisp-msg-protocol:ros-message)
  ((typedefs
    :reader typedefs
    :initarg :typedefs
    :type (cl:vector rosapi-msg:TypeDef)
   :initform (cl:make-array 0 :element-type 'rosapi-msg:TypeDef :initial-element (cl:make-instance 'rosapi-msg:TypeDef))))
)

(cl:defclass ServiceResponseDetails-response (<ServiceResponseDetails-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServiceResponseDetails-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServiceResponseDetails-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<ServiceResponseDetails-response> is deprecated: use rosapi-srv:ServiceResponseDetails-response instead.")))

(cl:ensure-generic-function 'typedefs-val :lambda-list '(m))
(cl:defmethod typedefs-val ((m <ServiceResponseDetails-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:typedefs-val is deprecated.  Use rosapi-srv:typedefs instead.")
  (typedefs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServiceResponseDetails-response>) ostream)
  "Serializes a message object of type '<ServiceResponseDetails-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'typedefs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'typedefs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServiceResponseDetails-response>) istream)
  "Deserializes a message object of type '<ServiceResponseDetails-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServiceResponseDetails-response>)))
  "Returns string type for a service object of type '<ServiceResponseDetails-response>"
  "rosapi/ServiceResponseDetailsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceResponseDetails-response)))
  "Returns string type for a service object of type 'ServiceResponseDetails-response"
  "rosapi/ServiceResponseDetailsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServiceResponseDetails-response>)))
  "Returns md5sum for a message object of type '<ServiceResponseDetails-response>"
  "bdbf5d5ad601e3c2244ad2f8692bd791")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServiceResponseDetails-response)))
  "Returns md5sum for a message object of type 'ServiceResponseDetails-response"
  "bdbf5d5ad601e3c2244ad2f8692bd791")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServiceResponseDetails-response>)))
  "Returns full string definition for message of type '<ServiceResponseDetails-response>"
  (cl:format cl:nil "TypeDef[] typedefs~%~%================================================================================~%MSG: rosapi/TypeDef~%string type~%string[] fieldnames~%string[] fieldtypes~%int32[] fieldarraylen~%string[] examples~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServiceResponseDetails-response)))
  "Returns full string definition for message of type 'ServiceResponseDetails-response"
  (cl:format cl:nil "TypeDef[] typedefs~%~%================================================================================~%MSG: rosapi/TypeDef~%string type~%string[] fieldnames~%string[] fieldtypes~%int32[] fieldarraylen~%string[] examples~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServiceResponseDetails-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'typedefs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServiceResponseDetails-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServiceResponseDetails-response
    (cl:cons ':typedefs (typedefs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServiceResponseDetails)))
  'ServiceResponseDetails-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServiceResponseDetails)))
  'ServiceResponseDetails-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServiceResponseDetails)))
  "Returns string type for a service object of type '<ServiceResponseDetails>"
  "rosapi/ServiceResponseDetails")