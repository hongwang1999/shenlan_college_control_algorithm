;; Auto-generated. Do not edit!


(when (boundp 'rosapi::Subscribers)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'Subscribers (find-package "ROSAPI")))
(unless (find-package "ROSAPI::SUBSCRIBERS")
  (make-package "ROSAPI::SUBSCRIBERS"))
(unless (find-package "ROSAPI::SUBSCRIBERSREQUEST")
  (make-package "ROSAPI::SUBSCRIBERSREQUEST"))
(unless (find-package "ROSAPI::SUBSCRIBERSRESPONSE")
  (make-package "ROSAPI::SUBSCRIBERSRESPONSE"))

(in-package "ROS")





(defclass rosapi::SubscribersRequest
  :super ros::object
  :slots (_topic ))

(defmethod rosapi::SubscribersRequest
  (:init
   (&key
    ((:topic __topic) "")
    )
   (send-super :init)
   (setq _topic (string __topic))
   self)
  (:topic
   (&optional __topic)
   (if __topic (setq _topic __topic)) _topic)
  (:serialization-length
   ()
   (+
    ;; string _topic
    4 (length _topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic
       (write-long (length _topic) s) (princ _topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosapi::SubscribersResponse
  :super ros::object
  :slots (_subscribers ))

(defmethod rosapi::SubscribersResponse
  (:init
   (&key
    ((:subscribers __subscribers) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _subscribers __subscribers)
   self)
  (:subscribers
   (&optional __subscribers)
   (if __subscribers (setq _subscribers __subscribers)) _subscribers)
  (:serialization-length
   ()
   (+
    ;; string[] _subscribers
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _subscribers)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _subscribers
     (write-long (length _subscribers) s)
     (dolist (elem _subscribers)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _subscribers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _subscribers (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _subscribers i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rosapi::Subscribers
  :super ros::object
  :slots ())

(setf (get rosapi::Subscribers :md5sum-) "cb387b68f5b29bc1456398ee8476b973")
(setf (get rosapi::Subscribers :datatype-) "rosapi/Subscribers")
(setf (get rosapi::Subscribers :request) rosapi::SubscribersRequest)
(setf (get rosapi::Subscribers :response) rosapi::SubscribersResponse)

(defmethod rosapi::SubscribersRequest
  (:response () (instance rosapi::SubscribersResponse :init)))

(setf (get rosapi::SubscribersRequest :md5sum-) "cb387b68f5b29bc1456398ee8476b973")
(setf (get rosapi::SubscribersRequest :datatype-) "rosapi/SubscribersRequest")
(setf (get rosapi::SubscribersRequest :definition-)
      "string topic
---
string[] subscribers
")

(setf (get rosapi::SubscribersResponse :md5sum-) "cb387b68f5b29bc1456398ee8476b973")
(setf (get rosapi::SubscribersResponse :datatype-) "rosapi/SubscribersResponse")
(setf (get rosapi::SubscribersResponse :definition-)
      "string topic
---
string[] subscribers
")



(provide :rosapi/Subscribers "cb387b68f5b29bc1456398ee8476b973")


