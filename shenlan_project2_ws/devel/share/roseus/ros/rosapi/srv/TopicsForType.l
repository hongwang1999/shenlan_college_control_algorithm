;; Auto-generated. Do not edit!


(when (boundp 'rosapi::TopicsForType)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'TopicsForType (find-package "ROSAPI")))
(unless (find-package "ROSAPI::TOPICSFORTYPE")
  (make-package "ROSAPI::TOPICSFORTYPE"))
(unless (find-package "ROSAPI::TOPICSFORTYPEREQUEST")
  (make-package "ROSAPI::TOPICSFORTYPEREQUEST"))
(unless (find-package "ROSAPI::TOPICSFORTYPERESPONSE")
  (make-package "ROSAPI::TOPICSFORTYPERESPONSE"))

(in-package "ROS")





(defclass rosapi::TopicsForTypeRequest
  :super ros::object
  :slots (_type ))

(defmethod rosapi::TopicsForTypeRequest
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

(defclass rosapi::TopicsForTypeResponse
  :super ros::object
  :slots (_topics ))

(defmethod rosapi::TopicsForTypeResponse
  (:init
   (&key
    ((:topics __topics) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _topics __topics)
   self)
  (:topics
   (&optional __topics)
   (if __topics (setq _topics __topics)) _topics)
  (:serialization-length
   ()
   (+
    ;; string[] _topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topics)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _topics
     (write-long (length _topics) s)
     (dolist (elem _topics)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _topics
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topics (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _topics i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rosapi::TopicsForType
  :super ros::object
  :slots ())

(setf (get rosapi::TopicsForType :md5sum-) "56f77ff6da756dd27c1ed16ec721072a")
(setf (get rosapi::TopicsForType :datatype-) "rosapi/TopicsForType")
(setf (get rosapi::TopicsForType :request) rosapi::TopicsForTypeRequest)
(setf (get rosapi::TopicsForType :response) rosapi::TopicsForTypeResponse)

(defmethod rosapi::TopicsForTypeRequest
  (:response () (instance rosapi::TopicsForTypeResponse :init)))

(setf (get rosapi::TopicsForTypeRequest :md5sum-) "56f77ff6da756dd27c1ed16ec721072a")
(setf (get rosapi::TopicsForTypeRequest :datatype-) "rosapi/TopicsForTypeRequest")
(setf (get rosapi::TopicsForTypeRequest :definition-)
      "string type
---
string[] topics
")

(setf (get rosapi::TopicsForTypeResponse :md5sum-) "56f77ff6da756dd27c1ed16ec721072a")
(setf (get rosapi::TopicsForTypeResponse :datatype-) "rosapi/TopicsForTypeResponse")
(setf (get rosapi::TopicsForTypeResponse :definition-)
      "string type
---
string[] topics
")



(provide :rosapi/TopicsForType "56f77ff6da756dd27c1ed16ec721072a")


