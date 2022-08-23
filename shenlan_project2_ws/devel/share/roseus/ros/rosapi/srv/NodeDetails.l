;; Auto-generated. Do not edit!


(when (boundp 'rosapi::NodeDetails)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'NodeDetails (find-package "ROSAPI")))
(unless (find-package "ROSAPI::NODEDETAILS")
  (make-package "ROSAPI::NODEDETAILS"))
(unless (find-package "ROSAPI::NODEDETAILSREQUEST")
  (make-package "ROSAPI::NODEDETAILSREQUEST"))
(unless (find-package "ROSAPI::NODEDETAILSRESPONSE")
  (make-package "ROSAPI::NODEDETAILSRESPONSE"))

(in-package "ROS")





(defclass rosapi::NodeDetailsRequest
  :super ros::object
  :slots (_node ))

(defmethod rosapi::NodeDetailsRequest
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

(defclass rosapi::NodeDetailsResponse
  :super ros::object
  :slots (_subscribing _publishing _services ))

(defmethod rosapi::NodeDetailsResponse
  (:init
   (&key
    ((:subscribing __subscribing) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:publishing __publishing) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:services __services) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _subscribing __subscribing)
   (setq _publishing __publishing)
   (setq _services __services)
   self)
  (:subscribing
   (&optional __subscribing)
   (if __subscribing (setq _subscribing __subscribing)) _subscribing)
  (:publishing
   (&optional __publishing)
   (if __publishing (setq _publishing __publishing)) _publishing)
  (:services
   (&optional __services)
   (if __services (setq _services __services)) _services)
  (:serialization-length
   ()
   (+
    ;; string[] _subscribing
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _subscribing)) 4
    ;; string[] _publishing
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _publishing)) 4
    ;; string[] _services
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _services)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _subscribing
     (write-long (length _subscribing) s)
     (dolist (elem _subscribing)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _publishing
     (write-long (length _publishing) s)
     (dolist (elem _publishing)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _services
     (write-long (length _services) s)
     (dolist (elem _services)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _subscribing
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _subscribing (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _subscribing i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _publishing
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _publishing (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _publishing i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
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

(defclass rosapi::NodeDetails
  :super ros::object
  :slots ())

(setf (get rosapi::NodeDetails :md5sum-) "e1d0ced5ab8d5edb5fc09c98eb1d46f6")
(setf (get rosapi::NodeDetails :datatype-) "rosapi/NodeDetails")
(setf (get rosapi::NodeDetails :request) rosapi::NodeDetailsRequest)
(setf (get rosapi::NodeDetails :response) rosapi::NodeDetailsResponse)

(defmethod rosapi::NodeDetailsRequest
  (:response () (instance rosapi::NodeDetailsResponse :init)))

(setf (get rosapi::NodeDetailsRequest :md5sum-) "e1d0ced5ab8d5edb5fc09c98eb1d46f6")
(setf (get rosapi::NodeDetailsRequest :datatype-) "rosapi/NodeDetailsRequest")
(setf (get rosapi::NodeDetailsRequest :definition-)
      "string node
---
string[] subscribing
string[] publishing
string[] services
")

(setf (get rosapi::NodeDetailsResponse :md5sum-) "e1d0ced5ab8d5edb5fc09c98eb1d46f6")
(setf (get rosapi::NodeDetailsResponse :datatype-) "rosapi/NodeDetailsResponse")
(setf (get rosapi::NodeDetailsResponse :definition-)
      "string node
---
string[] subscribing
string[] publishing
string[] services
")



(provide :rosapi/NodeDetails "e1d0ced5ab8d5edb5fc09c98eb1d46f6")


