;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::TestRequestAndResponse)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'TestRequestAndResponse (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTREQUESTANDRESPONSE")
  (make-package "ROSBRIDGE_LIBRARY::TESTREQUESTANDRESPONSE"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTREQUESTANDRESPONSEREQUEST")
  (make-package "ROSBRIDGE_LIBRARY::TESTREQUESTANDRESPONSEREQUEST"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTREQUESTANDRESPONSERESPONSE")
  (make-package "ROSBRIDGE_LIBRARY::TESTREQUESTANDRESPONSERESPONSE"))

(in-package "ROS")





(defclass rosbridge_library::TestRequestAndResponseRequest
  :super ros::object
  :slots (_data ))

(defmethod rosbridge_library::TestRequestAndResponseRequest
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

(defclass rosbridge_library::TestRequestAndResponseResponse
  :super ros::object
  :slots (_data ))

(defmethod rosbridge_library::TestRequestAndResponseResponse
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

(defclass rosbridge_library::TestRequestAndResponse
  :super ros::object
  :slots ())

(setf (get rosbridge_library::TestRequestAndResponse :md5sum-) "491d316f183df11876531749005b31d1")
(setf (get rosbridge_library::TestRequestAndResponse :datatype-) "rosbridge_library/TestRequestAndResponse")
(setf (get rosbridge_library::TestRequestAndResponse :request) rosbridge_library::TestRequestAndResponseRequest)
(setf (get rosbridge_library::TestRequestAndResponse :response) rosbridge_library::TestRequestAndResponseResponse)

(defmethod rosbridge_library::TestRequestAndResponseRequest
  (:response () (instance rosbridge_library::TestRequestAndResponseResponse :init)))

(setf (get rosbridge_library::TestRequestAndResponseRequest :md5sum-) "491d316f183df11876531749005b31d1")
(setf (get rosbridge_library::TestRequestAndResponseRequest :datatype-) "rosbridge_library/TestRequestAndResponseRequest")
(setf (get rosbridge_library::TestRequestAndResponseRequest :definition-)
      "int32 data
---
int32 data
")

(setf (get rosbridge_library::TestRequestAndResponseResponse :md5sum-) "491d316f183df11876531749005b31d1")
(setf (get rosbridge_library::TestRequestAndResponseResponse :datatype-) "rosbridge_library/TestRequestAndResponseResponse")
(setf (get rosbridge_library::TestRequestAndResponseResponse :definition-)
      "int32 data
---
int32 data
")



(provide :rosbridge_library/TestRequestAndResponse "491d316f183df11876531749005b31d1")


