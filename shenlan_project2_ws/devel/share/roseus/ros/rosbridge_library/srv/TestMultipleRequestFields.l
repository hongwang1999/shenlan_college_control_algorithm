;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::TestMultipleRequestFields)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'TestMultipleRequestFields (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTMULTIPLEREQUESTFIELDS")
  (make-package "ROSBRIDGE_LIBRARY::TESTMULTIPLEREQUESTFIELDS"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTMULTIPLEREQUESTFIELDSREQUEST")
  (make-package "ROSBRIDGE_LIBRARY::TESTMULTIPLEREQUESTFIELDSREQUEST"))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTMULTIPLEREQUESTFIELDSRESPONSE")
  (make-package "ROSBRIDGE_LIBRARY::TESTMULTIPLEREQUESTFIELDSRESPONSE"))

(in-package "ROS")





(defclass rosbridge_library::TestMultipleRequestFieldsRequest
  :super ros::object
  :slots (_int _float _string _bool ))

(defmethod rosbridge_library::TestMultipleRequestFieldsRequest
  (:init
   (&key
    ((:int __int) 0)
    ((:float __float) 0.0)
    ((:string __string) "")
    ((:bool __bool) nil)
    )
   (send-super :init)
   (setq _int (round __int))
   (setq _float (float __float))
   (setq _string (string __string))
   (setq _bool __bool)
   self)
  (:int
   (&optional __int)
   (if __int (setq _int __int)) _int)
  (:float
   (&optional __float)
   (if __float (setq _float __float)) _float)
  (:string
   (&optional __string)
   (if __string (setq _string __string)) _string)
  (:bool
   (&optional (__bool :null))
   (if (not (eq __bool :null)) (setq _bool __bool)) _bool)
  (:serialization-length
   ()
   (+
    ;; int32 _int
    4
    ;; float32 _float
    4
    ;; string _string
    4 (length _string)
    ;; bool _bool
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _int
       (write-long _int s)
     ;; float32 _float
       (sys::poke _float (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _string
       (write-long (length _string) s) (princ _string s)
     ;; bool _bool
       (if _bool (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _int
     (setq _int (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _float
     (setq _float (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _bool
     (setq _bool (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rosbridge_library::TestMultipleRequestFieldsResponse
  :super ros::object
  :slots ())

(defmethod rosbridge_library::TestMultipleRequestFieldsResponse
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

(defclass rosbridge_library::TestMultipleRequestFields
  :super ros::object
  :slots ())

(setf (get rosbridge_library::TestMultipleRequestFields :md5sum-) "6cce9fb727dd0f31d504d7d198a1f4ef")
(setf (get rosbridge_library::TestMultipleRequestFields :datatype-) "rosbridge_library/TestMultipleRequestFields")
(setf (get rosbridge_library::TestMultipleRequestFields :request) rosbridge_library::TestMultipleRequestFieldsRequest)
(setf (get rosbridge_library::TestMultipleRequestFields :response) rosbridge_library::TestMultipleRequestFieldsResponse)

(defmethod rosbridge_library::TestMultipleRequestFieldsRequest
  (:response () (instance rosbridge_library::TestMultipleRequestFieldsResponse :init)))

(setf (get rosbridge_library::TestMultipleRequestFieldsRequest :md5sum-) "6cce9fb727dd0f31d504d7d198a1f4ef")
(setf (get rosbridge_library::TestMultipleRequestFieldsRequest :datatype-) "rosbridge_library/TestMultipleRequestFieldsRequest")
(setf (get rosbridge_library::TestMultipleRequestFieldsRequest :definition-)
      "int32 int
float32 float
string string
bool bool
---
")

(setf (get rosbridge_library::TestMultipleRequestFieldsResponse :md5sum-) "6cce9fb727dd0f31d504d7d198a1f4ef")
(setf (get rosbridge_library::TestMultipleRequestFieldsResponse :datatype-) "rosbridge_library/TestMultipleRequestFieldsResponse")
(setf (get rosbridge_library::TestMultipleRequestFieldsResponse :definition-)
      "int32 int
float32 float
string string
bool bool
---
")



(provide :rosbridge_library/TestMultipleRequestFields "6cce9fb727dd0f31d504d7d198a1f4ef")


