;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::TestEmpty)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'TestEmpty (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTEMPTY")
  (make-package "ROSBRIDGE_LIBRARY::TESTEMPTY"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTEMPTYREQUEST")
  (make-package "ROSBRIDGE_LIBRARY::TESTEMPTYREQUEST"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTEMPTYRESPONSE")
  (make-package "ROSBRIDGE_LIBRARY::TESTEMPTYRESPONSE"))

(in-package "ROS")





(defclass rosbridge_library::TestEmptyRequest
  :super ros::object
  :slots ())

(defmethod rosbridge_library::TestEmptyRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rosbridge_library::TestEmptyResponse
  :super ros::object
  :slots ())

(defmethod rosbridge_library::TestEmptyResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass rosbridge_library::TestEmpty
  :super ros::object
  :slots ())

(setf (get rosbridge_library::TestEmpty :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get rosbridge_library::TestEmpty :datatype-) "rosbridge_library/TestEmpty")
(setf (get rosbridge_library::TestEmpty :request) rosbridge_library::TestEmptyRequest)
(setf (get rosbridge_library::TestEmpty :response) rosbridge_library::TestEmptyResponse)

(defmethod rosbridge_library::TestEmptyRequest
  (:response () (instance rosbridge_library::TestEmptyResponse :init)))

(setf (get rosbridge_library::TestEmptyRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get rosbridge_library::TestEmptyRequest :datatype-) "rosbridge_library/TestEmptyRequest")
(setf (get rosbridge_library::TestEmptyRequest :definition-)
      "---
")

(setf (get rosbridge_library::TestEmptyResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get rosbridge_library::TestEmptyResponse :datatype-) "rosbridge_library/TestEmptyResponse")
(setf (get rosbridge_library::TestEmptyResponse :definition-)
      "---
")



(provide :rosbridge_library/TestEmpty "d41d8cd98f00b204e9800998ecf8427e")


