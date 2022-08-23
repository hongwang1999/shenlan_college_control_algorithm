;; Auto-generated. Do not edit!


(when (boundp 'rosapi::DeleteParam)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'DeleteParam (find-package "ROSAPI")))
(unless (find-package "ROSAPI::DELETEPARAM")
  (make-package "ROSAPI::DELETEPARAM"))
(unless (find-package "ROSAPI::DELETEPARAMREQUEST")
  (make-package "ROSAPI::DELETEPARAMREQUEST"))
(unless (find-package "ROSAPI::DELETEPARAMRESPONSE")
  (make-package "ROSAPI::DELETEPARAMRESPONSE"))

(in-package "ROS")





(defclass rosapi::DeleteParamRequest
  :super ros::object
  :slots (_name ))

(defmethod rosapi::DeleteParamRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosapi::DeleteParamResponse
  :super ros::object
  :slots ())

(defmethod rosapi::DeleteParamResponse
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

(defclass rosapi::DeleteParam
  :super ros::object
  :slots ())

(setf (get rosapi::DeleteParam :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get rosapi::DeleteParam :datatype-) "rosapi/DeleteParam")
(setf (get rosapi::DeleteParam :request) rosapi::DeleteParamRequest)
(setf (get rosapi::DeleteParam :response) rosapi::DeleteParamResponse)

(defmethod rosapi::DeleteParamRequest
  (:response () (instance rosapi::DeleteParamResponse :init)))

(setf (get rosapi::DeleteParamRequest :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get rosapi::DeleteParamRequest :datatype-) "rosapi/DeleteParamRequest")
(setf (get rosapi::DeleteParamRequest :definition-)
      "string name
---
")

(setf (get rosapi::DeleteParamResponse :md5sum-) "c1f3d28f1b044c871e6eff2e9fc3c667")
(setf (get rosapi::DeleteParamResponse :datatype-) "rosapi/DeleteParamResponse")
(setf (get rosapi::DeleteParamResponse :definition-)
      "string name
---
")



(provide :rosapi/DeleteParam "c1f3d28f1b044c871e6eff2e9fc3c667")


