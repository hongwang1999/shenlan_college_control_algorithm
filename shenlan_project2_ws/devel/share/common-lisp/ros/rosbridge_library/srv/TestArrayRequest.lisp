; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-srv)


;//! \htmlinclude TestArrayRequest-request.msg.html

(cl:defclass <TestArrayRequest-request> (roslisp-msg-protocol:ros-message)
  ((int
    :reader int
    :initarg :int
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass TestArrayRequest-request (<TestArrayRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestArrayRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestArrayRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestArrayRequest-request> is deprecated: use rosbridge_library-srv:TestArrayRequest-request instead.")))

(cl:ensure-generic-function 'int-val :lambda-list '(m))
(cl:defmethod int-val ((m <TestArrayRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-srv:int-val is deprecated.  Use rosbridge_library-srv:int instead.")
  (int m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestArrayRequest-request>) ostream)
  "Serializes a message object of type '<TestArrayRequest-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'int))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'int))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestArrayRequest-request>) istream)
  "Deserializes a message object of type '<TestArrayRequest-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'int) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'int)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestArrayRequest-request>)))
  "Returns string type for a service object of type '<TestArrayRequest-request>"
  "rosbridge_library/TestArrayRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestArrayRequest-request)))
  "Returns string type for a service object of type 'TestArrayRequest-request"
  "rosbridge_library/TestArrayRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestArrayRequest-request>)))
  "Returns md5sum for a message object of type '<TestArrayRequest-request>"
  "3d7cfb7e4aa0844868966efa8a264398")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestArrayRequest-request)))
  "Returns md5sum for a message object of type 'TestArrayRequest-request"
  "3d7cfb7e4aa0844868966efa8a264398")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestArrayRequest-request>)))
  "Returns full string definition for message of type '<TestArrayRequest-request>"
  (cl:format cl:nil "int32[] int~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestArrayRequest-request)))
  "Returns full string definition for message of type 'TestArrayRequest-request"
  (cl:format cl:nil "int32[] int~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestArrayRequest-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'int) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestArrayRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TestArrayRequest-request
    (cl:cons ':int (int msg))
))
;//! \htmlinclude TestArrayRequest-response.msg.html

(cl:defclass <TestArrayRequest-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TestArrayRequest-response (<TestArrayRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestArrayRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestArrayRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestArrayRequest-response> is deprecated: use rosbridge_library-srv:TestArrayRequest-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestArrayRequest-response>) ostream)
  "Serializes a message object of type '<TestArrayRequest-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestArrayRequest-response>) istream)
  "Deserializes a message object of type '<TestArrayRequest-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestArrayRequest-response>)))
  "Returns string type for a service object of type '<TestArrayRequest-response>"
  "rosbridge_library/TestArrayRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestArrayRequest-response)))
  "Returns string type for a service object of type 'TestArrayRequest-response"
  "rosbridge_library/TestArrayRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestArrayRequest-response>)))
  "Returns md5sum for a message object of type '<TestArrayRequest-response>"
  "3d7cfb7e4aa0844868966efa8a264398")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestArrayRequest-response)))
  "Returns md5sum for a message object of type 'TestArrayRequest-response"
  "3d7cfb7e4aa0844868966efa8a264398")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestArrayRequest-response>)))
  "Returns full string definition for message of type '<TestArrayRequest-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestArrayRequest-response)))
  "Returns full string definition for message of type 'TestArrayRequest-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestArrayRequest-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestArrayRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TestArrayRequest-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TestArrayRequest)))
  'TestArrayRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TestArrayRequest)))
  'TestArrayRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestArrayRequest)))
  "Returns string type for a service object of type '<TestArrayRequest>"
  "rosbridge_library/TestArrayRequest")