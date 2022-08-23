;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::TestRequestOnly)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'TestRequestOnly (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTREQUESTONLY")
  (make-package "ROSBRIDGE_LIBRARY::TESTREQUESTONLY"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTREQUESTONLYREQUEST")
  (make-package "ROSBRIDGE_LIBRARY::TESTREQUESTONLYREQUEST"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTREQUESTONLYRESPONSE")
  (make-package "ROSBRIDGE_LIBRARY::TESTREQUESTONLYRESPONSE"))

(in-package "ROS")





(defclass rosbridge_library::TestRequestOnlyRequest
  :super ros::object
  :slots (_data ))

(defmethod rosbridge_library::TestRequestOnlyRequest
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

(defclass rosbridge_library::TestRequestOnlyResponse
  :super ros::object
  :slots ())

(defmethod rosbridge_library::TestRequestOnlyResponse
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

(defclass rosbridge_library::TestRequestOnly
  :super ros::object
  :slots ())

(setf (get rosbridge_library::TestRequestOnly :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get rosbridge_library::TestRequestOnly :datatype-) "rosbridge_library/TestRequestOnly")
(setf (get rosbridge_library::TestRequestOnly :request) rosbridge_library::TestRequestOnlyRequest)
(setf (get rosbridge_library::TestRequestOnly :response) rosbridge_library::TestRequestOnlyResponse)

(defmethod rosbridge_library::TestRequestOnlyRequest
  (:response () (instance rosbridge_library::TestRequestOnlyResponse :init)))

(setf (get rosbridge_library::TestRequestOnlyRequest :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get rosbridge_library::TestRequestOnlyRequest :datatype-) "rosbridge_library/TestRequestOnlyRequest")
(setf (get rosbridge_library::TestRequestOnlyRequest :definition-)
      "int32 data
---
")

(setf (get rosbridge_library::TestRequestOnlyResponse :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get rosbridge_library::TestRequestOnlyResponse :datatype-) "rosbridge_library/TestRequestOnlyResponse")
(setf (get rosbridge_library::TestRequestOnlyResponse :definition-)
      "int32 data
---
")



(provide :rosbridge_library/TestRequestOnly "da5909fbe378aeaf85e547e830cc1bb7")


