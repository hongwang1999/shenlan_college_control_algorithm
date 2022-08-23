;; Auto-generated. Do not edit!


(when (boundp 'rosapi::ServiceNode)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'ServiceNode (find-package "ROSAPI")))
(unless (find-package "ROSAPI::SERVICENODE")
  (make-package "ROSAPI::SERVICENODE"))
(unless (find-package "ROSAPI::SERVICENODEREQUEST")
  (make-package "ROSAPI::SERVICENODEREQUEST"))
(unless (find-package "ROSAPI::SERVICENODERESPONSE")
  (make-package "ROSAPI::SERVICENODERESPONSE"))

(in-package "ROS")





(defclass rosapi::ServiceNodeRequest
  :super ros::object
  :slots (_service ))

(defmethod rosapi::ServiceNodeRequest
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

(defclass rosapi::ServiceNodeResponse
  :super ros::object
  :slots (_node ))

(defmethod rosapi::ServiceNodeResponse
  (:init
   (&key
    ((:node __node) "")
    )
   (send-super :init)
   (setq _node (string __node))
   self)
  (:node
   (&optional __node)
   (if __node (setq _node __node)) _node)
  (:serialization-length
   ()
   (+
    ;; string _node
    4 (length _node)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _node
       (write-long (length _node) s) (princ _node s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _node
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosapi::ServiceNode
  :super ros::object
  :slots ())

(setf (get rosapi::ServiceNode :md5sum-) "bd2a0a45fd7a73a86c8d6051d5a6db8a")
(setf (get rosapi::ServiceNode :datatype-) "rosapi/ServiceNode")
(setf (get rosapi::ServiceNode :request) rosapi::ServiceNodeRequest)
(setf (get rosapi::ServiceNode :response) rosapi::ServiceNodeResponse)

(defmethod rosapi::ServiceNodeRequest
  (:response () (instance rosapi::ServiceNodeResponse :init)))

(setf (get rosapi::ServiceNodeRequest :md5sum-) "bd2a0a45fd7a73a86c8d6051d5a6db8a")
(setf (get rosapi::ServiceNodeRequest :datatype-) "rosapi/ServiceNodeRequest")
(setf (get rosapi::ServiceNodeRequest :definition-)
      "string service
---
string node
")

(setf (get rosapi::ServiceNodeResponse :md5sum-) "bd2a0a45fd7a73a86c8d6051d5a6db8a")
(setf (get rosapi::ServiceNodeResponse :datatype-) "rosapi/ServiceNodeResponse")
(setf (get rosapi::ServiceNodeResponse :definition-)
      "string service
---
string node
")



(provide :rosapi/ServiceNode "bd2a0a45fd7a73a86c8d6051d5a6db8a")


