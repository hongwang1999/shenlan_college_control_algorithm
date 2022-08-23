;; Auto-generated. Do not edit!


(when (boundp 'rosapi::SearchParam)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'SearchParam (find-package "ROSAPI")))
(unless (find-package "ROSAPI::SEARCHPARAM")
  (make-package "ROSAPI::SEARCHPARAM"))
(unless (find-package "ROSAPI::SEARCHPARAMREQUEST")
  (make-package "ROSAPI::SEARCHPARAMREQUEST"))
(unless (find-package "ROSAPI::SEARCHPARAMRESPONSE")
  (make-package "ROSAPI::SEARCHPARAMRESPONSE"))

(in-package "ROS")





(defclass rosapi::SearchParamRequest
  :super ros::object
  :slots (_name ))

(defmethod rosapi::SearchParamRequest
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

(defclass rosapi::SearchParamResponse
  :super ros::object
  :slots (_global_name ))

(defmethod rosapi::SearchParamResponse
  (:init
   (&key
    ((:global_name __global_name) "")
    )
   (send-super :init)
   (setq _global_name (string __global_name))
   self)
  (:global_name
   (&optional __global_name)
   (if __global_name (setq _global_name __global_name)) _global_name)
  (:serialization-length
   ()
   (+
    ;; string _global_name
    4 (length _global_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _global_name
       (write-long (length _global_name) s) (princ _global_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _global_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _global_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosapi::SearchParam
  :super ros::object
  :slots ())

(setf (get rosapi::SearchParam :md5sum-) "dfadc39f113c1cc6d7759508d8461d5a")
(setf (get rosapi::SearchParam :datatype-) "rosapi/SearchParam")
(setf (get rosapi::SearchParam :request) rosapi::SearchParamRequest)
(setf (get rosapi::SearchParam :response) rosapi::SearchParamResponse)

(defmethod rosapi::SearchParamRequest
  (:response () (instance rosapi::SearchParamResponse :init)))

(setf (get rosapi::SearchParamRequest :md5sum-) "dfadc39f113c1cc6d7759508d8461d5a")
(setf (get rosapi::SearchParamRequest :datatype-) "rosapi/SearchParamRequest")
(setf (get rosapi::SearchParamRequest :definition-)
      "string name
---
string global_name
")

(setf (get rosapi::SearchParamResponse :md5sum-) "dfadc39f113c1cc6d7759508d8461d5a")
(setf (get rosapi::SearchParamResponse :datatype-) "rosapi/SearchParamResponse")
(setf (get rosapi::SearchParamResponse :definition-)
      "string name
---
string global_name
")



(provide :rosapi/SearchParam "dfadc39f113c1cc6d7759508d8461d5a")


