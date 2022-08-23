; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-srv)


;//! \htmlinclude TestEmpty-request.msg.html

(cl:defclass <TestEmpty-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TestEmpty-request (<TestEmpty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestEmpty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestEmpty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestEmpty-request> is deprecated: use rosbridge_library-srv:TestEmpty-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestEmpty-request>) ostream)
  "Serializes a message object of type '<TestEmpty-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestEmpty-request>) istream)
  "Deserializes a message object of type '<TestEmpty-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestEmpty-request>)))
  "Returns string type for a service object of type '<TestEmpty-request>"
  "rosbridge_library/TestEmptyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestEmpty-request)))
  "Returns string type for a service object of type 'TestEmpty-request"
  "rosbridge_library/TestEmptyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestEmpty-request>)))
  "Returns md5sum for a message object of type '<TestEmpty-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestEmpty-request)))
  "Returns md5sum for a message object of type 'TestEmpty-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestEmpty-request>)))
  "Returns full string definition for message of type '<TestEmpty-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestEmpty-request)))
  "Returns full string definition for message of type 'TestEmpty-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestEmpty-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestEmpty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TestEmpty-request
))
;//! \htmlinclude TestEmpty-response.msg.html

(cl:defclass <TestEmpty-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TestEmpty-response (<TestEmpty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestEmpty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestEmpty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestEmpty-response> is deprecated: use rosbridge_library-srv:TestEmpty-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestEmpty-response>) ostream)
  "Serializes a message object of type '<TestEmpty-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestEmpty-response>) istream)
  "Deserializes a message object of type '<TestEmpty-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestEmpty-response>)))
  "Returns string type for a service object of type '<TestEmpty-response>"
  "rosbridge_library/TestEmptyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestEmpty-response)))
  "Returns string type for a service object of type 'TestEmpty-response"
  "rosbridge_library/TestEmptyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestEmpty-response>)))
  "Returns md5sum for a message object of type '<TestEmpty-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestEmpty-response)))
  "Returns md5sum for a message object of type 'TestEmpty-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestEmpty-response>)))
  "Returns full string definition for message of type '<TestEmpty-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestEmpty-response)))
  "Returns full string definition for message of type 'TestEmpty-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestEmpty-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestEmpty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TestEmpty-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TestEmpty)))
  'TestEmpty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TestEmpty)))
  'TestEmpty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestEmpty)))
  "Returns string type for a service object of type '<TestEmpty>"
  "rosbridge_library/TestEmpty")