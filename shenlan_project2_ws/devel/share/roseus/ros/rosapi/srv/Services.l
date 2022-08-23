;; Auto-generated. Do not edit!


(when (boundp 'rosapi::Services)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'Services (find-package "ROSAPI")))
(unless (find-package "ROSAPI::SERVICES")
  (make-package "ROSAPI::SERVICES"))
(unless (find-package "ROSAPI::SERVICESREQUEST")
  (make-package "ROSAPI::SERVICESREQUEST"))
(unless (find-package "ROSAPI::SERVICESRESPONSE")
  (make-package "ROSAPI::SERVICESRESPONSE"))

(in-package "ROS")





(defclass rosapi::ServicesRequest
  :super ros::object
  :slots ())

(defmethod rosapi::ServicesRequest
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

(defclass rosapi::ServicesResponse
  :super ros::object
  :slots (_services ))

(defmethod rosapi::ServicesResponse
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

(defclass rosapi::Services
  :super ros::object
  :slots ())

(setf (get rosapi::Services :md5sum-) "e44a7e7bcb900acadbcc28b132378f0c")
(setf (get rosapi::Services :datatype-) "rosapi/Services")
(setf (get rosapi::Services :request) rosapi::ServicesRequest)
(setf (get rosapi::Services :response) rosapi::ServicesResponse)

(defmethod rosapi::ServicesRequest
  (:response () (instance rosapi::ServicesResponse :init)))

(setf (get rosapi::ServicesRequest :md5sum-) "e44a7e7bcb900acadbcc28b132378f0c")
(setf (get rosapi::ServicesRequest :datatype-) "rosapi/ServicesRequest")
(setf (get rosapi::ServicesRequest :definition-)
      "
---
string[] services
")

(setf (get rosapi::ServicesResponse :md5sum-) "e44a7e7bcb900acadbcc28b132378f0c")
(setf (get rosapi::ServicesResponse :datatype-) "rosapi/ServicesResponse")
(setf (get rosapi::ServicesResponse :definition-)
      "
---
string[] services
")



(provide :rosapi/Services "e44a7e7bcb900acadbcc28b132378f0c")


