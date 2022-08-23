;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::TestResponseOnly)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'TestResponseOnly (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTRESPONSEONLY")
  (make-package "ROSBRIDGE_LIBRARY::TESTRESPONSEONLY"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTRESPONSEONLYREQUEST")
  (make-package "ROSBRIDGE_LIBRARY::TESTRESPONSEONLYREQUEST"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTRESPONSEONLYRESPONSE")
  (make-package "ROSBRIDGE_LIBRARY::TESTRESPONSEONLYRESPONSE"))

(in-package "ROS")





(defclass rosbridge_library::TestResponseOnlyRequest
  :super ros::object
  :slots ())

(defmethod rosbridge_library::TestResponseOnlyRequest
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

(defclass rosbridge_library::TestResponseOnlyResponse
  :super ros::object
  :slots (_data ))

(defmethod rosbridge_library::TestResponseOnlyResponse
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rosbridge_library::TestResponseOnly
  :super ros::object
  :slots ())

(setf (get rosbridge_library::TestResponseOnly :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get rosbridge_library::TestResponseOnly :datatype-) "rosbridge_library/TestResponseOnly")
(setf (get rosbridge_library::TestResponseOnly :request) rosbridge_library::TestResponseOnlyRequest)
(setf (get rosbridge_library::TestResponseOnly :response) rosbridge_library::TestResponseOnlyResponse)

(defmethod rosbridge_library::TestResponseOnlyRequest
  (:response () (instance rosbridge_library::TestResponseOnlyResponse :init)))

(setf (get rosbridge_library::TestResponseOnlyRequest :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get rosbridge_library::TestResponseOnlyRequest :datatype-) "rosbridge_library/TestResponseOnlyRequest")
(setf (get rosbridge_library::TestResponseOnlyRequest :definition-)
      "---
int32 data
")

(setf (get rosbridge_library::TestResponseOnlyResponse :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get rosbridge_library::TestResponseOnlyResponse :datatype-) "rosbridge_library/TestResponseOnlyResponse")
(setf (get rosbridge_library::TestResponseOnlyResponse :definition-)
      "---
int32 data
")



(provide :rosbridge_library/TestResponseOnly "da5909fbe378aeaf85e547e830cc1bb7")


