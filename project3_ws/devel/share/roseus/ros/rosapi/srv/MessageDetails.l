;; Auto-generated. Do not edit!


(when (boundp 'rosapi::MessageDetails)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'MessageDetails (find-package "ROSAPI")))
(unless (find-package "ROSAPI::MESSAGEDETAILS")
  (make-package "ROSAPI::MESSAGEDETAILS"))
(unless (find-package "ROSAPI::MESSAGEDETAILSREQUEST")
  (make-package "ROSAPI::MESSAGEDETAILSREQUEST"))
(unless (find-package "ROSAPI::MESSAGEDETAILSRESPONSE")
  (make-package "ROSAPI::MESSAGEDETAILSRESPONSE"))

(in-package "ROS")





(defclass rosapi::MessageDetailsRequest
  :super ros::object
  :slots (_type ))

(defmethod rosapi::MessageDetailsRequest
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

(defclass rosapi::MessageDetailsResponse
  :super ros::object
  :slots (_typedefs ))

(defmethod rosapi::MessageDetailsResponse
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

(defclass rosapi::MessageDetails
  :super ros::object
  :slots ())

(setf (get rosapi::MessageDetails :md5sum-) "bdbf5d5ad601e3c2244ad2f8692bd791")
(setf (get rosapi::MessageDetails :datatype-) "rosapi/MessageDetails")
(setf (get rosapi::MessageDetails :request) rosapi::MessageDetailsRequest)
(setf (get rosapi::MessageDetails :response) rosapi::MessageDetailsResponse)

(defmethod rosapi::MessageDetailsRequest
  (:response () (instance rosapi::MessageDetailsResponse :init)))

(setf (get rosapi::MessageDetailsRequest :md5sum-) "bdbf5d5ad601e3c2244ad2f8692bd791")
(setf (get rosapi::MessageDetailsRequest :datatype-) "rosapi/MessageDetailsRequest")
(setf (get rosapi::MessageDetailsRequest :definition-)
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

(setf (get rosapi::MessageDetailsResponse :md5sum-) "bdbf5d5ad601e3c2244ad2f8692bd791")
(setf (get rosapi::MessageDetailsResponse :datatype-) "rosapi/MessageDetailsResponse")
(setf (get rosapi::MessageDetailsResponse :definition-)
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



(provide :rosapi/MessageDetails "bdbf5d5ad601e3c2244ad2f8692bd791")


