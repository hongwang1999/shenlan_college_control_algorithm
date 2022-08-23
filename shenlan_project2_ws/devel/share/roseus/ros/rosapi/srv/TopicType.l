;; Auto-generated. Do not edit!


(when (boundp 'rosapi::TopicType)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'TopicType (find-package "ROSAPI")))
(unless (find-package "ROSAPI::TOPICTYPE")
  (make-package "ROSAPI::TOPICTYPE"))
(unless (find-package "ROSAPI::TOPICTYPEREQUEST")
  (make-package "ROSAPI::TOPICTYPEREQUEST"))
(unless (find-package "ROSAPI::TOPICTYPERESPONSE")
  (make-package "ROSAPI::TOPICTYPERESPONSE"))

(in-package "ROS")





(defclass rosapi::TopicTypeRequest
  :super ros::object
  :slots (_topic ))

(defmethod rosapi::TopicTypeRequest
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

(defclass rosapi::TopicTypeResponse
  :super ros::object
  :slots (_type ))

(defmethod rosapi::TopicTypeResponse
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

(defclass rosapi::TopicType
  :super ros::object
  :slots ())

(setf (get rosapi::TopicType :md5sum-) "0d30b3f53a0fd5036523a7141e524ddf")
(setf (get rosapi::TopicType :datatype-) "rosapi/TopicType")
(setf (get rosapi::TopicType :request) rosapi::TopicTypeRequest)
(setf (get rosapi::TopicType :response) rosapi::TopicTypeResponse)

(defmethod rosapi::TopicTypeRequest
  (:response () (instance rosapi::TopicTypeResponse :init)))

(setf (get rosapi::TopicTypeRequest :md5sum-) "0d30b3f53a0fd5036523a7141e524ddf")
(setf (get rosapi::TopicTypeRequest :datatype-) "rosapi/TopicTypeRequest")
(setf (get rosapi::TopicTypeRequest :definition-)
      "string topic
---
string type
")

(setf (get rosapi::TopicTypeResponse :md5sum-) "0d30b3f53a0fd5036523a7141e524ddf")
(setf (get rosapi::TopicTypeResponse :datatype-) "rosapi/TopicTypeResponse")
(setf (get rosapi::TopicTypeResponse :definition-)
      "string topic
---
string type
")



(provide :rosapi/TopicType "0d30b3f53a0fd5036523a7141e524ddf")


