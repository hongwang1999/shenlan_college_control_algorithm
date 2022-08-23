;; Auto-generated. Do not edit!


(when (boundp 'rosapi::ServiceProviders)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'ServiceProviders (find-package "ROSAPI")))
(unless (find-package "ROSAPI::SERVICEPROVIDERS")
  (make-package "ROSAPI::SERVICEPROVIDERS"))
(unless (find-package "ROSAPI::SERVICEPROVIDERSREQUEST")
  (make-package "ROSAPI::SERVICEPROVIDERSREQUEST"))
(unless (find-package "ROSAPI::SERVICEPROVIDERSRESPONSE")
  (make-package "ROSAPI::SERVICEPROVIDERSRESPONSE"))

(in-package "ROS")





(defclass rosapi::ServiceProvidersRequest
  :super ros::object
  :slots (_service ))

(defmethod rosapi::ServiceProvidersRequest
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

(defclass rosapi::ServiceProvidersResponse
  :super ros::object
  :slots (_providers ))

(defmethod rosapi::ServiceProvidersResponse
  (:init
   (&key
    ((:providers __providers) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _providers __providers)
   self)
  (:providers
   (&optional __providers)
   (if __providers (setq _providers __providers)) _providers)
  (:serialization-length
   ()
   (+
    ;; string[] _providers
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _providers)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _providers
     (write-long (length _providers) s)
     (dolist (elem _providers)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _providers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _providers (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _providers i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rosapi::ServiceProviders
  :super ros::object
  :slots ())

(setf (get rosapi::ServiceProviders :md5sum-) "f30b41d5e347454ae5483ee95eef5cc6")
(setf (get rosapi::ServiceProviders :datatype-) "rosapi/ServiceProviders")
(setf (get rosapi::ServiceProviders :request) rosapi::ServiceProvidersRequest)
(setf (get rosapi::ServiceProviders :response) rosapi::ServiceProvidersResponse)

(defmethod rosapi::ServiceProvidersRequest
  (:response () (instance rosapi::ServiceProvidersResponse :init)))

(setf (get rosapi::ServiceProvidersRequest :md5sum-) "f30b41d5e347454ae5483ee95eef5cc6")
(setf (get rosapi::ServiceProvidersRequest :datatype-) "rosapi/ServiceProvidersRequest")
(setf (get rosapi::ServiceProvidersRequest :definition-)
      "string service
---
string[] providers
")

(setf (get rosapi::ServiceProvidersResponse :md5sum-) "f30b41d5e347454ae5483ee95eef5cc6")
(setf (get rosapi::ServiceProvidersResponse :datatype-) "rosapi/ServiceProvidersResponse")
(setf (get rosapi::ServiceProvidersResponse :definition-)
      "string service
---
string[] providers
")



(provide :rosapi/ServiceProviders "f30b41d5e347454ae5483ee95eef5cc6")


