; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-msg)


;//! \htmlinclude TestDurationArray.msg.html

(cl:defclass <TestDurationArray> (roslisp-msg-protocol:ros-message)
  ((durations
    :reader durations
    :initarg :durations
    :type (cl:vector cl:real)
   :initform (cl:make-array 0 :element-type 'cl:real :initial-element 0)))
)

(cl:defclass TestDurationArray (<TestDurationArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestDurationArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestDurationArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-msg:<TestDurationArray> is deprecated: use rosbridge_library-msg:TestDurationArray instead.")))

(cl:ensure-generic-function 'durations-val :lambda-list '(m))
(cl:defmethod durations-val ((m <TestDurationArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-msg:durations-val is deprecated.  Use rosbridge_library-msg:durations instead.")
  (durations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestDurationArray>) ostream)
  "Serializes a message object of type '<TestDurationArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'durations))))
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
   (cl:slot-value msg 'durations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestDurationArray>) istream)
  "Deserializes a message object of type '<TestDurationArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'durations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'durations)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestDurationArray>)))
  "Returns string type for a message object of type '<TestDurationArray>"
  "rosbridge_library/TestDurationArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestDurationArray)))
  "Returns string type for a message object of type 'TestDurationArray"
  "rosbridge_library/TestDurationArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestDurationArray>)))
  "Returns md5sum for a message object of type '<TestDurationArray>"
  "8b3bcadc803a7fcbc857c6a1dab53bcd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestDurationArray)))
  "Returns md5sum for a message object of type 'TestDurationArray"
  "8b3bcadc803a7fcbc857c6a1dab53bcd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestDurationArray>)))
  "Returns full string definition for message of type '<TestDurationArray>"
  (cl:format cl:nil "duration[] durations~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestDurationArray)))
  "Returns full string definition for message of type 'TestDurationArray"
  (cl:format cl:nil "duration[] durations~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestDurationArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'durations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestDurationArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TestDurationArray
    (cl:cons ':durations (durations msg))
))
