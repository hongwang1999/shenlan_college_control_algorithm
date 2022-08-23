; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-srv)


;//! \htmlinclude TestMultipleResponseFields-request.msg.html

(cl:defclass <TestMultipleResponseFields-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TestMultipleResponseFields-request (<TestMultipleResponseFields-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestMultipleResponseFields-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestMultipleResponseFields-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestMultipleResponseFields-request> is deprecated: use rosbridge_library-srv:TestMultipleResponseFields-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestMultipleResponseFields-request>) ostream)
  "Serializes a message object of type '<TestMultipleResponseFields-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestMultipleResponseFields-request>) istream)
  "Deserializes a message object of type '<TestMultipleResponseFields-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestMultipleResponseFields-request>)))
  "Returns string type for a service object of type '<TestMultipleResponseFields-request>"
  "rosbridge_library/TestMultipleResponseFieldsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestMultipleResponseFields-request)))
  "Returns string type for a service object of type 'TestMultipleResponseFields-request"
  "rosbridge_library/TestMultipleResponseFieldsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestMultipleResponseFields-request>)))
  "Returns md5sum for a message object of type '<TestMultipleResponseFields-request>"
  "6cce9fb727dd0f31d504d7d198a1f4ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestMultipleResponseFields-request)))
  "Returns md5sum for a message object of type 'TestMultipleResponseFields-request"
  "6cce9fb727dd0f31d504d7d198a1f4ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestMultipleResponseFields-request>)))
  "Returns full string definition for message of type '<TestMultipleResponseFields-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestMultipleResponseFields-request)))
  "Returns full string definition for message of type 'TestMultipleResponseFields-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestMultipleResponseFields-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestMultipleResponseFields-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TestMultipleResponseFields-request
))
;//! \htmlinclude TestMultipleResponseFields-response.msg.html

(cl:defclass <TestMultipleResponseFields-response> (roslisp-msg-protocol:ros-message)
  ((int
    :reader int
    :initarg :int
    :type cl:integer
    :initform 0)
   (float
    :reader float
    :initarg :float
    :type cl:float
    :initform 0.0)
   (string
    :reader string
    :initarg :string
    :type cl:string
    :initform "")
   (bool
    :reader bool
    :initarg :bool
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass TestMultipleResponseFields-response (<TestMultipleResponseFields-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestMultipleResponseFields-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestMultipleResponseFields-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestMultipleResponseFields-response> is deprecated: use rosbridge_library-srv:TestMultipleResponseFields-response instead.")))

(cl:ensure-generic-function 'int-val :lambda-list '(m))
(cl:defmethod int-val ((m <TestMultipleResponseFields-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-srv:int-val is deprecated.  Use rosbridge_library-srv:int instead.")
  (int m))

(cl:ensure-generic-function 'float-val :lambda-list '(m))
(cl:defmethod float-val ((m <TestMultipleResponseFields-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-srv:float-val is deprecated.  Use rosbridge_library-srv:float instead.")
  (float m))

(cl:ensure-generic-function 'string-val :lambda-list '(m))
(cl:defmethod string-val ((m <TestMultipleResponseFields-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-srv:string-val is deprecated.  Use rosbridge_library-srv:string instead.")
  (string m))

(cl:ensure-generic-function 'bool-val :lambda-list '(m))
(cl:defmethod bool-val ((m <TestMultipleResponseFields-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-srv:bool-val is deprecated.  Use rosbridge_library-srv:bool instead.")
  (bool m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestMultipleResponseFields-response>) ostream)
  "Serializes a message object of type '<TestMultipleResponseFields-response>"
  (cl:let* ((signed (cl:slot-value msg 'int)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'float))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'string))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bool) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestMultipleResponseFields-response>) istream)
  "Deserializes a message object of type '<TestMultipleResponseFields-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'int) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'float) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'bool) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestMultipleResponseFields-response>)))
  "Returns string type for a service object of type '<TestMultipleResponseFields-response>"
  "rosbridge_library/TestMultipleResponseFieldsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestMultipleResponseFields-response)))
  "Returns string type for a service object of type 'TestMultipleResponseFields-response"
  "rosbridge_library/TestMultipleResponseFieldsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestMultipleResponseFields-response>)))
  "Returns md5sum for a message object of type '<TestMultipleResponseFields-response>"
  "6cce9fb727dd0f31d504d7d198a1f4ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestMultipleResponseFields-response)))
  "Returns md5sum for a message object of type 'TestMultipleResponseFields-response"
  "6cce9fb727dd0f31d504d7d198a1f4ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestMultipleResponseFields-response>)))
  "Returns full string definition for message of type '<TestMultipleResponseFields-response>"
  (cl:format cl:nil "int32 int~%float32 float~%string string~%bool bool~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestMultipleResponseFields-response)))
  "Returns full string definition for message of type 'TestMultipleResponseFields-response"
  (cl:format cl:nil "int32 int~%float32 float~%string string~%bool bool~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestMultipleResponseFields-response>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'string))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestMultipleResponseFields-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TestMultipleResponseFields-response
    (cl:cons ':int (int msg))
    (cl:cons ':float (float msg))
    (cl:cons ':string (string msg))
    (cl:cons ':bool (bool msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TestMultipleResponseFields)))
  'TestMultipleResponseFields-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TestMultipleResponseFields)))
  'TestMultipleResponseFields-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestMultipleResponseFields)))
  "Returns string type for a service object of type '<TestMultipleResponseFields>"
  "rosbridge_library/TestMultipleResponseFields")