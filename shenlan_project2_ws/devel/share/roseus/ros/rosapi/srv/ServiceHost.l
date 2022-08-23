;; Auto-generated. Do not edit!


(when (boundp 'rosapi::ServiceHost)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'ServiceHost (find-package "ROSAPI")))
(unless (find-package "ROSAPI::SERVICEHOST")
  (make-package "ROSAPI::SERVICEHOST"))
(unless (find-package "ROSAPI::SERVICEHOSTREQUEST")
  (make-package "ROSAPI::SERVICEHOSTREQUEST"))
(unless (find-package "ROSAPI::SERVICEHOSTRESPONSE")
  (make-package "ROSAPI::SERVICEHOSTRESPONSE"))

(in-package "ROS")





(defclass rosapi::ServiceHostRequest
  :super ros::object
  :slots (_service ))

(defmethod rosapi::ServiceHostRequest
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

(defclass rosapi::ServiceHostResponse
  :super ros::object
  :slots (_host ))

(defmethod rosapi::ServiceHostResponse
  (:init
   (&key
    ((:host __host) "")
    )
   (send-super :init)
   (setq _host (string __host))
   self)
  (:host
   (&optional __host)
   (if __host (setq _host __host)) _host)
  (:serialization-length
   ()
   (+
    ;; string _host
    4 (length _host)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _host
       (write-long (length _host) s) (princ _host s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _host
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _host (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosapi::ServiceHost
  :super ros::object
  :slots ())

(setf (get rosapi::ServiceHost :md5sum-) "a1b60006f8ee69637c856c94dd192f5a")
(setf (get rosapi::ServiceHost :datatype-) "rosapi/ServiceHost")
(setf (get rosapi::ServiceHost :request) rosapi::ServiceHostRequest)
(setf (get rosapi::ServiceHost :response) rosapi::ServiceHostResponse)

(defmethod rosapi::ServiceHostRequest
  (:response () (instance rosapi::ServiceHostResponse :init)))

(setf (get rosapi::ServiceHostRequest :md5sum-) "a1b60006f8ee69637c856c94dd192f5a")
(setf (get rosapi::ServiceHostRequest :datatype-) "rosapi/ServiceHostRequest")
(setf (get rosapi::ServiceHostRequest :definition-)
      "string service
---
string host
")

(setf (get rosapi::ServiceHostResponse :md5sum-) "a1b60006f8ee69637c856c94dd192f5a")
(setf (get rosapi::ServiceHostResponse :datatype-) "rosapi/ServiceHostResponse")
(setf (get rosapi::ServiceHostResponse :definition-)
      "string service
---
string host
")



(provide :rosapi/ServiceHost "a1b60006f8ee69637c856c94dd192f5a")


