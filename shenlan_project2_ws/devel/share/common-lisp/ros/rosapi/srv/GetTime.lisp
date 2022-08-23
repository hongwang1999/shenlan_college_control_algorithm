; Auto-generated. Do not edit!


(cl:in-package rosapi-srv)


;//! \htmlinclude GetTime-request.msg.html

(cl:defclass <GetTime-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTime-request (<GetTime-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTime-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTime-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<GetTime-request> is deprecated: use rosapi-srv:GetTime-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTime-request>) ostream)
  "Serializes a message object of type '<GetTime-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTime-request>) istream)
  "Deserializes a message object of type '<GetTime-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTime-request>)))
  "Returns string type for a service object of type '<GetTime-request>"
  "rosapi/GetTimeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTime-request)))
  "Returns string type for a service object of type 'GetTime-request"
  "rosapi/GetTimeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTime-request>)))
  "Returns md5sum for a message object of type '<GetTime-request>"
  "556a4fb76023a469987922359d08a844")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTime-request)))
  "Returns md5sum for a message object of type 'GetTime-request"
  "556a4fb76023a469987922359d08a844")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTime-request>)))
  "Returns full string definition for message of type '<GetTime-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTime-request)))
  "Returns full string definition for message of type 'GetTime-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTime-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTime-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTime-request
))
;//! \htmlinclude GetTime-response.msg.html

(cl:defclass <GetTime-response> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0))
)

(cl:defclass GetTime-response (<GetTime-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTime-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTime-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosapi-srv:<GetTime-response> is deprecated: use rosapi-srv:GetTime-response instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <GetTime-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosapi-srv:time-val is deprecated.  Use rosapi-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTime-response>) ostream)
  "Serializes a message object of type '<GetTime-response>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time) (cl:floor (cl:slot-value msg 'time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTime-response>) istream)
  "Deserializes a message object of type '<GetTime-response>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTime-response>)))
  "Returns string type for a service object of type '<GetTime-response>"
  "rosapi/GetTimeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTime-response)))
  "Returns string type for a service object of type 'GetTime-response"
  "rosapi/GetTimeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTime-response>)))
  "Returns md5sum for a message object of type '<GetTime-response>"
  "556a4fb76023a469987922359d08a844")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTime-response)))
  "Returns md5sum for a message object of type 'GetTime-response"
  "556a4fb76023a469987922359d08a844")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTime-response>)))
  "Returns full string definition for message of type '<GetTime-response>"
  (cl:format cl:nil "time time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTime-response)))
  "Returns full string definition for message of type 'GetTime-response"
  (cl:format cl:nil "time time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTime-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTime-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTime-response
    (cl:cons ':time (time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTime)))
  'GetTime-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTime)))
  'GetTime-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTime)))
  "Returns string type for a service object of type '<GetTime>"
  "rosapi/GetTime")