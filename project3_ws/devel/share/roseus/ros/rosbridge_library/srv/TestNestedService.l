;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::TestNestedService)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'TestNestedService (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTNESTEDSERVICE")
  (make-package "ROSBRIDGE_LIBRARY::TESTNESTEDSERVICE"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTNESTEDSERVICEREQUEST")
  (make-package "ROSBRIDGE_LIBRARY::TESTNESTEDSERVICEREQUEST"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTNESTEDSERVICERESPONSE")
  (make-package "ROSBRIDGE_LIBRARY::TESTNESTEDSERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosbridge_library::TestNestedServiceRequest
  :super ros::object
  :slots (_pose ))

(defmethod rosbridge_library::TestNestedServiceRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass rosbridge_library::TestNestedServiceResponse
  :super ros::object
  :slots (_data ))

(defmethod rosbridge_library::TestNestedServiceResponse
  (:init
   (&key
    ((:data __data) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass rosbridge_library::TestNestedService
  :super ros::object
  :slots ())

(setf (get rosbridge_library::TestNestedService :md5sum-) "063d2b71e58b5225a457d4ee09dab6f6")
(setf (get rosbridge_library::TestNestedService :datatype-) "rosbridge_library/TestNestedService")
(setf (get rosbridge_library::TestNestedService :request) rosbridge_library::TestNestedServiceRequest)
(setf (get rosbridge_library::TestNestedService :response) rosbridge_library::TestNestedServiceResponse)

(defmethod rosbridge_library::TestNestedServiceRequest
  (:response () (instance rosbridge_library::TestNestedServiceResponse :init)))

(setf (get rosbridge_library::TestNestedServiceRequest :md5sum-) "063d2b71e58b5225a457d4ee09dab6f6")
(setf (get rosbridge_library::TestNestedServiceRequest :datatype-) "rosbridge_library/TestNestedServiceRequest")
(setf (get rosbridge_library::TestNestedServiceRequest :definition-)
      "#request definition
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
#response definition
std_msgs/Float64 data


================================================================================
MSG: std_msgs/Float64
")

(setf (get rosbridge_library::TestNestedServiceResponse :md5sum-) "063d2b71e58b5225a457d4ee09dab6f6")
(setf (get rosbridge_library::TestNestedServiceResponse :datatype-) "rosbridge_library/TestNestedServiceResponse")
(setf (get rosbridge_library::TestNestedServiceResponse :definition-)
      "#request definition
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
#response definition
std_msgs/Float64 data


================================================================================
MSG: std_msgs/Float64
")



(provide :rosbridge_library/TestNestedService "063d2b71e58b5225a457d4ee09dab6f6")


