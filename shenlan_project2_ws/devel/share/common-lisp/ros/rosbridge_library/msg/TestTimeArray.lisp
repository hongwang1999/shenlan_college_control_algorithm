; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-msg)


;//! \htmlinclude TestTimeArray.msg.html

(cl:defclass <TestTimeArray> (roslisp-msg-protocol:ros-message)
  ((times
    :reader times
    :initarg :times
    :type (cl:vector cl:real)
   :initform (cl:make-array 0 :element-type 'cl:real :initial-element 0)))
)

(cl:defclass TestTimeArray (<TestTimeArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestTimeArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestTimeArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-msg:<TestTimeArray> is deprecated: use rosbridge_library-msg:TestTimeArray instead.")))

(cl:ensure-generic-function 'times-val :lambda-list '(m))
(cl:defmethod times-val ((m <TestTimeArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-msg:times-val is deprecated.  Use rosbridge_library-msg:times instead.")
  (times m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestTimeArray>) ostream)
  "Serializes a message object of type '<TestTimeArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'times))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__sec (cl:floor ele))
        (__nsec (cl:round (cl:* 1e9 (cl:- ele (cl:floor ele))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream)))
   (cl:slot-value msg 'times))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestTimeArray>) istream)
  "Deserializes a message object of type '<TestTimeArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'times) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'times)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestTimeArray>)))
  "Returns string type for a message object of type '<TestTimeArray>"
  "rosbridge_library/TestTimeArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestTimeArray)))
  "Returns string type for a message object of type 'TestTimeArray"
  "rosbridge_library/TestTimeArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestTimeArray>)))
  "Returns md5sum for a message object of type '<TestTimeArray>"
  "237b97d24fd33588beee4cd8978b149d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestTimeArray)))
  "Returns md5sum for a message object of type 'TestTimeArray"
  "237b97d24fd33588beee4cd8978b149d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestTimeArray>)))
  "Returns full string definition for message of type '<TestTimeArray>"
  (cl:format cl:nil "time[] times~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestTimeArray)))
  "Returns full string definition for message of type 'TestTimeArray"
  (cl:format cl:nil "time[] times~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestTimeArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'times) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestTimeArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TestTimeArray
    (cl:cons ':times (times msg))
))
