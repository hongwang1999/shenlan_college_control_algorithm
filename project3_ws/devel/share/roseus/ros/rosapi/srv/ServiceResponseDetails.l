;; Auto-generated. Do not edit!


(when (boundp 'rosapi::ServiceResponseDetails)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'ServiceResponseDetails (find-package "ROSAPI")))
(unless (find-package "ROSAPI::SERVICERESPONSEDETAILS")
  (make-package "ROSAPI::SERVICERESPONSEDETAILS"))
(unless (find-package "ROSAPI::SERVICERESPONSEDETAILSREQUEST")
  (make-package "ROSAPI::SERVICERESPONSEDETAILSREQUEST"))
(unless (find-package "ROSAPI::SERVICERESPONSEDETAILSRESPONSE")
  (make-package "ROSAPI::SERVICERESPONSEDETAILSRESPONSE"))

(in-package "ROS")





(defclass rosapi::ServiceResponseDetailsRequest
  :super ros::object
  :slots (_type ))

(defmethod rosapi::ServiceResponseDetailsRequest
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

(defclass rosapi::ServiceResponseDetailsResponse
  :super ros::object
  :slots (_typedefs ))

(defmethod rosapi::ServiceResponseDetailsResponse
  (:init
   (&key
    ((:typedefs __typedefs) ())
    )
   (send-super :init)
   (setq _typedefs __typedefs)
   self)
  (:typedefs
   (&rest __typedefs)
   (if (keywordp (car __typedefs))
       (send* _typedefs __typedefs)
     (progn
       (if __typedefs (setq _typedefs (car __typedefs)))
       _typedefs)))
  (:serialization-length
   ()
   (+
    ;; rosapi/TypeDef[] _typedefs
    (apply #'+ (send-all _typedefs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rosapi/TypeDef[] _typedefs
     (write-long (length _typedefs) s)
     (dolist (elem _typedefs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rosapi/TypeDef[] _typedefs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _typedefs (let (r) (dotimes (i n) (push (instance rosapi::TypeDef :init) r)) r))
     (dolist (elem- _typedefs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass rosapi::ServiceResponseDetails
  :super ros::object
  :slots ())

(setf (get rosapi::ServiceResponseDetails :md5sum-) "bdbf5d5ad601e3c2244ad2f8692bd791")
(setf (get rosapi::ServiceResponseDetails :datatype-) "rosapi/ServiceResponseDetails")
(setf (get rosapi::ServiceResponseDetails :request) rosapi::ServiceResponseDetailsRequest)
(setf (get rosapi::ServiceResponseDetails :response) rosapi::ServiceResponseDetailsResponse)

(defmethod rosapi::ServiceResponseDetailsRequest
  (:response () (instance rosapi::ServiceResponseDetailsResponse :init)))

(setf (get rosapi::ServiceResponseDetailsRequest :md5sum-) "bdbf5d5ad601e3c2244ad2f8692bd791")
(setf (get rosapi::ServiceResponseDetailsRequest :datatype-) "rosapi/ServiceResponseDetailsRequest")
(setf (get rosapi::ServiceResponseDetailsRequest :definition-)
      "string type
---
TypeDef[] typedefs

================================================================================
MSG: rosapi/TypeDef
string type
string[] fieldnames
string[] fieldtypes
int32[] fieldarraylen
string[] examples
")

(setf (get rosapi::ServiceResponseDetailsResponse :md5sum-) "bdbf5d5ad601e3c2244ad2f8692bd791")
(setf (get rosapi::ServiceResponseDetailsResponse :datatype-) "rosapi/ServiceResponseDetailsResponse")
(setf (get rosapi::ServiceResponseDetailsResponse :definition-)
      "string type
---
TypeDef[] typedefs

================================================================================
MSG: rosapi/TypeDef
string type
string[] fieldnames
string[] fieldtypes
int32[] fieldarraylen
string[] examples
")



(provide :rosapi/ServiceResponseDetails "bdbf5d5ad601e3c2244ad2f8692bd791")


