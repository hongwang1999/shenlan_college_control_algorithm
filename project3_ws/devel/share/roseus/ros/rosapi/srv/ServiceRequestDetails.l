;; Auto-generated. Do not edit!


(when (boundp 'rosapi::ServiceRequestDetails)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'ServiceRequestDetails (find-package "ROSAPI")))
(unless (find-package "ROSAPI::SERVICEREQUESTDETAILS")
  (make-package "ROSAPI::SERVICEREQUESTDETAILS"))
(unless (find-package "ROSAPI::SERVICEREQUESTDETAILSREQUEST")
  (make-package "ROSAPI::SERVICEREQUESTDETAILSREQUEST"))
(unless (find-package "ROSAPI::SERVICEREQUESTDETAILSRESPONSE")
  (make-package "ROSAPI::SERVICEREQUESTDETAILSRESPONSE"))

(in-package "ROS")





(defclass rosapi::ServiceRequestDetailsRequest
  :super ros::object
  :slots (_type ))

(defmethod rosapi::ServiceRequestDetailsRequest
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

(defclass rosapi::ServiceRequestDetailsResponse
  :super ros::object
  :slots (_typedefs ))

(defmethod rosapi::ServiceRequestDetailsResponse
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

(defclass rosapi::ServiceRequestDetails
  :super ros::object
  :slots ())

(setf (get rosapi::ServiceRequestDetails :md5sum-) "bdbf5d5ad601e3c2244ad2f8692bd791")
(setf (get rosapi::ServiceRequestDetails :datatype-) "rosapi/ServiceRequestDetails")
(setf (get rosapi::ServiceRequestDetails :request) rosapi::ServiceRequestDetailsRequest)
(setf (get rosapi::ServiceRequestDetails :response) rosapi::ServiceRequestDetailsResponse)

(defmethod rosapi::ServiceRequestDetailsRequest
  (:response () (instance rosapi::ServiceRequestDetailsResponse :init)))

(setf (get rosapi::ServiceRequestDetailsRequest :md5sum-) "bdbf5d5ad601e3c2244ad2f8692bd791")
(setf (get rosapi::ServiceRequestDetailsRequest :datatype-) "rosapi/ServiceRequestDetailsRequest")
(setf (get rosapi::ServiceRequestDetailsRequest :definition-)
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

(setf (get rosapi::ServiceRequestDetailsResponse :md5sum-) "bdbf5d5ad601e3c2244ad2f8692bd791")
(setf (get rosapi::ServiceRequestDetailsResponse :datatype-) "rosapi/ServiceRequestDetailsResponse")
(setf (get rosapi::ServiceRequestDetailsResponse :definition-)
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



(provide :rosapi/ServiceRequestDetails "bdbf5d5ad601e3c2244ad2f8692bd791")


