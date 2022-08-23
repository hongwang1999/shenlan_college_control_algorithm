;; Auto-generated. Do not edit!


(when (boundp 'rosapi::ServicesForType)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'ServicesForType (find-package "ROSAPI")))
(unless (find-package "ROSAPI::SERVICESFORTYPE")
  (make-package "ROSAPI::SERVICESFORTYPE"))
(unless (find-package "ROSAPI::SERVICESFORTYPEREQUEST")
  (make-package "ROSAPI::SERVICESFORTYPEREQUEST"))
(unless (find-package "ROSAPI::SERVICESFORTYPERESPONSE")
  (make-package "ROSAPI::SERVICESFORTYPERESPONSE"))

(in-package "ROS")





(defclass rosapi::ServicesForTypeRequest
  :super ros::object
  :slots (_type ))

(defmethod rosapi::ServicesForTypeRequest
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

(defclass rosapi::ServicesForTypeResponse
  :super ros::object
  :slots (_services ))

(defmethod rosapi::ServicesForTypeResponse
  (:init
   (&key
    ((:services __services) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _services __services)
   self)
  (:services
   (&optional __services)
   (if __services (setq _services __services)) _services)
  (:serialization-length
   ()
   (+
    ;; string[] _services
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _services)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _services
     (write-long (length _services) s)
     (dolist (elem _services)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _services
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _services (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _services i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rosapi::ServicesForType
  :super ros::object
  :slots ())

(setf (get rosapi::ServicesForType :md5sum-) "93e9fe8ae5a9136008e260fe510bd2b0")
(setf (get rosapi::ServicesForType :datatype-) "rosapi/ServicesForType")
(setf (get rosapi::ServicesForType :request) rosapi::ServicesForTypeRequest)
(setf (get rosapi::ServicesForType :response) rosapi::ServicesForTypeResponse)

(defmethod rosapi::ServicesForTypeRequest
  (:response () (instance rosapi::ServicesForTypeResponse :init)))

(setf (get rosapi::ServicesForTypeRequest :md5sum-) "93e9fe8ae5a9136008e260fe510bd2b0")
(setf (get rosapi::ServicesForTypeRequest :datatype-) "rosapi/ServicesForTypeRequest")
(setf (get rosapi::ServicesForTypeRequest :definition-)
      "string type
---
string[] services
")

(setf (get rosapi::ServicesForTypeResponse :md5sum-) "93e9fe8ae5a9136008e260fe510bd2b0")
(setf (get rosapi::ServicesForTypeResponse :datatype-) "rosapi/ServicesForTypeResponse")
(setf (get rosapi::ServicesForTypeResponse :definition-)
      "string type
---
string[] services
")



(provide :rosapi/ServicesForType "93e9fe8ae5a9136008e260fe510bd2b0")


