;; Auto-generated. Do not edit!


(when (boundp 'rosapi::Publishers)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'Publishers (find-package "ROSAPI")))
(unless (find-package "ROSAPI::PUBLISHERS")
  (make-package "ROSAPI::PUBLISHERS"))
(unless (find-package "ROSAPI::PUBLISHERSREQUEST")
  (make-package "ROSAPI::PUBLISHERSREQUEST"))
(unless (find-package "ROSAPI::PUBLISHERSRESPONSE")
  (make-package "ROSAPI::PUBLISHERSRESPONSE"))

(in-package "ROS")





(defclass rosapi::PublishersRequest
  :super ros::object
  :slots (_topic ))

(defmethod rosapi::PublishersRequest
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

(defclass rosapi::PublishersResponse
  :super ros::object
  :slots (_publishers ))

(defmethod rosapi::PublishersResponse
  (:init
   (&key
    ((:publishers __publishers) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _publishers __publishers)
   self)
  (:publishers
   (&optional __publishers)
   (if __publishers (setq _publishers __publishers)) _publishers)
  (:serialization-length
   ()
   (+
    ;; string[] _publishers
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _publishers)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _publishers
     (write-long (length _publishers) s)
     (dolist (elem _publishers)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _publishers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _publishers (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _publishers i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rosapi::Publishers
  :super ros::object
  :slots ())

(setf (get rosapi::Publishers :md5sum-) "cb37f09944e7ba1fc08ee38f7a94291d")
(setf (get rosapi::Publishers :datatype-) "rosapi/Publishers")
(setf (get rosapi::Publishers :request) rosapi::PublishersRequest)
(setf (get rosapi::Publishers :response) rosapi::PublishersResponse)

(defmethod rosapi::PublishersRequest
  (:response () (instance rosapi::PublishersResponse :init)))

(setf (get rosapi::PublishersRequest :md5sum-) "cb37f09944e7ba1fc08ee38f7a94291d")
(setf (get rosapi::PublishersRequest :datatype-) "rosapi/PublishersRequest")
(setf (get rosapi::PublishersRequest :definition-)
      "string topic
---
string[] publishers
")

(setf (get rosapi::PublishersResponse :md5sum-) "cb37f09944e7ba1fc08ee38f7a94291d")
(setf (get rosapi::PublishersResponse :datatype-) "rosapi/PublishersResponse")
(setf (get rosapi::PublishersResponse :definition-)
      "string topic
---
string[] publishers
")



(provide :rosapi/Publishers "cb37f09944e7ba1fc08ee38f7a94291d")


