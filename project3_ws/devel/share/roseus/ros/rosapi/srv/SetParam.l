;; Auto-generated. Do not edit!


(when (boundp 'rosapi::SetParam)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'SetParam (find-package "ROSAPI")))
(unless (find-package "ROSAPI::SETPARAM")
  (make-package "ROSAPI::SETPARAM"))
(unless (find-package "ROSAPI::SETPARAMREQUEST")
  (make-package "ROSAPI::SETPARAMREQUEST"))
(unless (find-package "ROSAPI::SETPARAMRESPONSE")
  (make-package "ROSAPI::SETPARAMRESPONSE"))

(in-package "ROS")





(defclass rosapi::SetParamRequest
  :super ros::object
  :slots (_name _value ))

(defmethod rosapi::SetParamRequest
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value (string __value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosapi::SetParamResponse
  :super ros::object
  :slots ())

(defmethod rosapi::SetParamResponse
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

(defclass rosapi::SetParam
  :super ros::object
  :slots ())

(setf (get rosapi::SetParam :md5sum-) "bc6ccc4a57f61779c8eaae61e9f422e0")
(setf (get rosapi::SetParam :datatype-) "rosapi/SetParam")
(setf (get rosapi::SetParam :request) rosapi::SetParamRequest)
(setf (get rosapi::SetParam :response) rosapi::SetParamResponse)

(defmethod rosapi::SetParamRequest
  (:response () (instance rosapi::SetParamResponse :init)))

(setf (get rosapi::SetParamRequest :md5sum-) "bc6ccc4a57f61779c8eaae61e9f422e0")
(setf (get rosapi::SetParamRequest :datatype-) "rosapi/SetParamRequest")
(setf (get rosapi::SetParamRequest :definition-)
      "string name
string value
---
")

(setf (get rosapi::SetParamResponse :md5sum-) "bc6ccc4a57f61779c8eaae61e9f422e0")
(setf (get rosapi::SetParamResponse :datatype-) "rosapi/SetParamResponse")
(setf (get rosapi::SetParamResponse :definition-)
      "string name
string value
---
")



(provide :rosapi/SetParam "bc6ccc4a57f61779c8eaae61e9f422e0")


