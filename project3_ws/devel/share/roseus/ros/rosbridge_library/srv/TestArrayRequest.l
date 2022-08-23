;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::TestArrayRequest)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'TestArrayRequest (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTARRAYREQUEST")
  (make-package "ROSBRIDGE_LIBRARY::TESTARRAYREQUEST"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTARRAYREQUESTREQUEST")
  (make-package "ROSBRIDGE_LIBRARY::TESTARRAYREQUESTREQUEST"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTARRAYREQUESTRESPONSE")
  (make-package "ROSBRIDGE_LIBRARY::TESTARRAYREQUESTRESPONSE"))

(in-package "ROS")





(defclass rosbridge_library::TestArrayRequestRequest
  :super ros::object
  :slots (_int ))

(defmethod rosbridge_library::TestArrayRequestRequest
  (:init
   (&key
    ((:int __int) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _int __int)
   self)
  (:int
   (&optional __int)
   (if __int (setq _int __int)) _int)
  (:serialization-length
   ()
   (+
    ;; int32[] _int
    (* 4    (length _int)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _int
     (write-long (length _int) s)
     (dotimes (i (length _int))
       (write-long (elt _int i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _int
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _int (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _int i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass rosbridge_library::TestArrayRequestResponse
  :super ros::object
  :slots ())

(defmethod rosbridge_library::TestArrayRequestResponse
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

(defclass rosbridge_library::TestArrayRequest
  :super ros::object
  :slots ())

(setf (get rosbridge_library::TestArrayRequest :md5sum-) "3d7cfb7e4aa0844868966efa8a264398")
(setf (get rosbridge_library::TestArrayRequest :datatype-) "rosbridge_library/TestArrayRequest")
(setf (get rosbridge_library::TestArrayRequest :request) rosbridge_library::TestArrayRequestRequest)
(setf (get rosbridge_library::TestArrayRequest :response) rosbridge_library::TestArrayRequestResponse)

(defmethod rosbridge_library::TestArrayRequestRequest
  (:response () (instance rosbridge_library::TestArrayRequestResponse :init)))

(setf (get rosbridge_library::TestArrayRequestRequest :md5sum-) "3d7cfb7e4aa0844868966efa8a264398")
(setf (get rosbridge_library::TestArrayRequestRequest :datatype-) "rosbridge_library/TestArrayRequestRequest")
(setf (get rosbridge_library::TestArrayRequestRequest :definition-)
      "int32[] int
---
")

(setf (get rosbridge_library::TestArrayRequestResponse :md5sum-) "3d7cfb7e4aa0844868966efa8a264398")
(setf (get rosbridge_library::TestArrayRequestResponse :datatype-) "rosbridge_library/TestArrayRequestResponse")
(setf (get rosbridge_library::TestArrayRequestResponse :definition-)
      "int32[] int
---
")



(provide :rosbridge_library/TestArrayRequest "3d7cfb7e4aa0844868966efa8a264398")


