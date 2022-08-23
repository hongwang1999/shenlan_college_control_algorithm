; Auto-generated. Do not edit!


(cl:in-package rosbridge_library-srv)


;//! \htmlinclude TestNestedService-request.msg.html

(cl:defclass <TestNestedService-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass TestNestedService-request (<TestNestedService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestNestedService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestNestedService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestNestedService-request> is deprecated: use rosbridge_library-srv:TestNestedService-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TestNestedService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-srv:pose-val is deprecated.  Use rosbridge_library-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestNestedService-request>) ostream)
  "Serializes a message object of type '<TestNestedService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestNestedService-request>) istream)
  "Deserializes a message object of type '<TestNestedService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestNestedService-request>)))
  "Returns string type for a service object of type '<TestNestedService-request>"
  "rosbridge_library/TestNestedServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestNestedService-request)))
  "Returns string type for a service object of type 'TestNestedService-request"
  "rosbridge_library/TestNestedServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestNestedService-request>)))
  "Returns md5sum for a message object of type '<TestNestedService-request>"
  "063d2b71e58b5225a457d4ee09dab6f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestNestedService-request)))
  "Returns md5sum for a message object of type 'TestNestedService-request"
  "063d2b71e58b5225a457d4ee09dab6f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestNestedService-request>)))
  "Returns full string definition for message of type '<TestNestedService-request>"
  (cl:format cl:nil "#request definition~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestNestedService-request)))
  "Returns full string definition for message of type 'TestNestedService-request"
  (cl:format cl:nil "#request definition~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestNestedService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestNestedService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TestNestedService-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude TestNestedService-response.msg.html

(cl:defclass <TestNestedService-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass TestNestedService-response (<TestNestedService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestNestedService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestNestedService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosbridge_library-srv:<TestNestedService-response> is deprecated: use rosbridge_library-srv:TestNestedService-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TestNestedService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosbridge_library-srv:data-val is deprecated.  Use rosbridge_library-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestNestedService-response>) ostream)
  "Serializes a message object of type '<TestNestedService-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestNestedService-response>) istream)
  "Deserializes a message object of type '<TestNestedService-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestNestedService-response>)))
  "Returns string type for a service object of type '<TestNestedService-response>"
  "rosbridge_library/TestNestedServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestNestedService-response)))
  "Returns string type for a service object of type 'TestNestedService-response"
  "rosbridge_library/TestNestedServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestNestedService-response>)))
  "Returns md5sum for a message object of type '<TestNestedService-response>"
  "063d2b71e58b5225a457d4ee09dab6f6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestNestedService-response)))
  "Returns md5sum for a message object of type 'TestNestedService-response"
  "063d2b71e58b5225a457d4ee09dab6f6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestNestedService-response>)))
  "Returns full string definition for message of type '<TestNestedService-response>"
  (cl:format cl:nil "#response definition~%std_msgs/Float64 data~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestNestedService-response)))
  "Returns full string definition for message of type 'TestNestedService-response"
  (cl:format cl:nil "#response definition~%std_msgs/Float64 data~%~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestNestedService-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestNestedService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TestNestedService-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TestNestedService)))
  'TestNestedService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TestNestedService)))
  'TestNestedService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestNestedService)))
  "Returns string type for a service object of type '<TestNestedService>"
  "rosbridge_library/TestNestedService")