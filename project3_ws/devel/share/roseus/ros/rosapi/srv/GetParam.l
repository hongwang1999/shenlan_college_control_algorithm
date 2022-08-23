;; Auto-generated. Do not edit!


(when (boundp 'rosapi::GetParam)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'GetParam (find-package "ROSAPI")))
(unless (find-package "ROSAPI::GETPARAM")
  (make-package "ROSAPI::GETPARAM"))
(unless (find-package "ROSAPI::GETPARAMREQUEST")
  (make-package "ROSAPI::GETPARAMREQUEST"))
(unless (find-package "ROSAPI::GETPARAMRESPONSE")
  (make-package "ROSAPI::GETPARAMRESPONSE"))

(in-package "ROS")





(defclass rosapi::GetParamRequest
  :super ros::object
  :slots (_name _default ))

(defmethod rosapi::GetParamRequest
  (:init
   (&key
    ((:name __name) "")
    ((:default __default) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _default (string __default))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:default
   (&optional __default)
   (if __default (setq _default __default)) _default)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _default
    4 (length _default)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _default
       (write-long (length _default) s) (princ _default s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _default
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _default (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosapi::GetParamResponse
  :super ros::object
  :slots (_value ))

(defmethod rosapi::GetParamResponse
  (:init
   (&key
    ((:value __value) "")
    )
   (send-super :init)
   (setq _value (string __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosapi::GetParam
  :super ros::object
  :slots ())

(setf (get rosapi::GetParam :md5sum-) "e36fd90759dbac1c5159140a7fa8c644")
(setf (get rosapi::GetParam :datatype-) "rosapi/GetParam")
(setf (get rosapi::GetParam :request) rosapi::GetParamRequest)
(setf (get rosapi::GetParam :response) rosapi::GetParamResponse)

(defmethod rosapi::GetParamRequest
  (:response () (instance rosapi::GetParamResponse :init)))

(setf (get rosapi::GetParamRequest :md5sum-) "e36fd90759dbac1c5159140a7fa8c644")
(setf (get rosapi::GetParamRequest :datatype-) "rosapi/GetParamRequest")
(setf (get rosapi::GetParamRequest :definition-)
      "string name
string default
---
string value
")

(setf (get rosapi::GetParamResponse :md5sum-) "e36fd90759dbac1c5159140a7fa8c644")
(setf (get rosapi::GetParamResponse :datatype-) "rosapi/GetParamResponse")
(setf (get rosapi::GetParamResponse :definition-)
      "string name
string default
---
string value
")



(provide :rosapi/GetParam "e36fd90759dbac1c5159140a7fa8c644")


