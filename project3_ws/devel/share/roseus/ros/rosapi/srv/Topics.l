;; Auto-generated. Do not edit!


(when (boundp 'rosapi::Topics)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'Topics (find-package "ROSAPI")))
(unless (find-package "ROSAPI::TOPICS")
  (make-package "ROSAPI::TOPICS"))
(unless (find-package "ROSAPI::TOPICSREQUEST")
  (make-package "ROSAPI::TOPICSREQUEST"))
(unless (find-package "ROSAPI::TOPICSRESPONSE")
  (make-package "ROSAPI::TOPICSRESPONSE"))

(in-package "ROS")





(defclass rosapi::TopicsRequest
  :super ros::object
  :slots ())

(defmethod rosapi::TopicsRequest
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

(defclass rosapi::TopicsResponse
  :super ros::object
  :slots (_topics _types ))

(defmethod rosapi::TopicsResponse
  (:init
   (&key
    ((:topics __topics) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:types __types) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _topics __topics)
   (setq _types __types)
   self)
  (:topics
   (&optional __topics)
   (if __topics (setq _topics __topics)) _topics)
  (:types
   (&optional __types)
   (if __types (setq _types __types)) _types)
  (:serialization-length
   ()
   (+
    ;; string[] _topics
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _topics)) 4
    ;; string[] _types
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _types)) 4
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
     ;; string[] _types
     (write-long (length _types) s)
     (dolist (elem _types)
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
   ;; string[] _types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _types (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _types i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rosapi::Topics
  :super ros::object
  :slots ())

(setf (get rosapi::Topics :md5sum-) "d966d98fc333fa1f3135af765eac1ba8")
(setf (get rosapi::Topics :datatype-) "rosapi/Topics")
(setf (get rosapi::Topics :request) rosapi::TopicsRequest)
(setf (get rosapi::Topics :response) rosapi::TopicsResponse)

(defmethod rosapi::TopicsRequest
  (:response () (instance rosapi::TopicsResponse :init)))

(setf (get rosapi::TopicsRequest :md5sum-) "d966d98fc333fa1f3135af765eac1ba8")
(setf (get rosapi::TopicsRequest :datatype-) "rosapi/TopicsRequest")
(setf (get rosapi::TopicsRequest :definition-)
      "
---
string[] topics
string[] types
")

(setf (get rosapi::TopicsResponse :md5sum-) "d966d98fc333fa1f3135af765eac1ba8")
(setf (get rosapi::TopicsResponse :datatype-) "rosapi/TopicsResponse")
(setf (get rosapi::TopicsResponse :definition-)
      "
---
string[] topics
string[] types
")



(provide :rosapi/Topics "d966d98fc333fa1f3135af765eac1ba8")


