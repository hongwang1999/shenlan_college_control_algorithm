;; Auto-generated. Do not edit!


(when (boundp 'rosapi::ServiceType)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'ServiceType (find-package "ROSAPI")))
(unless (find-package "ROSAPI::SERVICETYPE")
  (make-package "ROSAPI::SERVICETYPE"))
(unless (find-package "ROSAPI::SERVICETYPEREQUEST")
  (make-package "ROSAPI::SERVICETYPEREQUEST"))
(unless (find-package "ROSAPI::SERVICETYPERESPONSE")
  (make-package "ROSAPI::SERVICETYPERESPONSE"))

(in-package "ROS")





(defclass rosapi::ServiceTypeRequest
  :super ros::object
  :slots (_service ))

(defmethod rosapi::ServiceTypeRequest
  (:init
   (&key
    ((:service __service) "")
    )
   (send-super :init)
   (setq _service (string __service))
   self)
  (:service
   (&optional __service)
   (if __service (setq _service __service)) _service)
  (:serialization-length
   ()
   (+
    ;; string _service
    4 (length _service)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _service
       (write-long (length _service) s) (princ _service s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _service
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _service (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosapi::ServiceTypeResponse
  :super ros::object
  :slots (_type ))

(defmethod rosapi::ServiceTypeResponse
  (:init
   (&key
    ((:type __type) "")
    )
   (send-super :init)
   (setq _type (string __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosapi::ServiceType
  :super ros::object
  :slots ())

(setf (get rosapi::ServiceType :md5sum-) "0e24a2dcdf70e483afc092a35a1f15f7")
(setf (get rosapi::ServiceType :datatype-) "rosapi/ServiceType")
(setf (get rosapi::ServiceType :request) rosapi::ServiceTypeRequest)
(setf (get rosapi::ServiceType :response) rosapi::ServiceTypeResponse)

(defmethod rosapi::ServiceTypeRequest
  (:response () (instance rosapi::ServiceTypeResponse :init)))

(setf (get rosapi::ServiceTypeRequest :md5sum-) "0e24a2dcdf70e483afc092a35a1f15f7")
(setf (get rosapi::ServiceTypeRequest :datatype-) "rosapi/ServiceTypeRequest")
(setf (get rosapi::ServiceTypeRequest :definition-)
      "string service
---
string type
")

(setf (get rosapi::ServiceTypeResponse :md5sum-) "0e24a2dcdf70e483afc092a35a1f15f7")
(setf (get rosapi::ServiceTypeResponse :datatype-) "rosapi/ServiceTypeResponse")
(setf (get rosapi::ServiceTypeResponse :definition-)
      "string service
---
string type
")



(provide :rosapi/ServiceType "0e24a2dcdf70e483afc092a35a1f15f7")


