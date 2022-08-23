;; Auto-generated. Do not edit!


(when (boundp 'rosapi::GetParamNames)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'GetParamNames (find-package "ROSAPI")))
(unless (find-package "ROSAPI::GETPARAMNAMES")
  (make-package "ROSAPI::GETPARAMNAMES"))
(unless (find-package "ROSAPI::GETPARAMNAMESREQUEST")
  (make-package "ROSAPI::GETPARAMNAMESREQUEST"))
(unless (find-package "ROSAPI::GETPARAMNAMESRESPONSE")
  (make-package "ROSAPI::GETPARAMNAMESRESPONSE"))

(in-package "ROS")





(defclass rosapi::GetParamNamesRequest
  :super ros::object
  :slots ())

(defmethod rosapi::GetParamNamesRequest
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

(defclass rosapi::GetParamNamesResponse
  :super ros::object
  :slots (_names ))

(defmethod rosapi::GetParamNamesResponse
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _names __names)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rosapi::GetParamNames
  :super ros::object
  :slots ())

(setf (get rosapi::GetParamNames :md5sum-) "dc7ae3609524b18034e49294a4ce670e")
(setf (get rosapi::GetParamNames :datatype-) "rosapi/GetParamNames")
(setf (get rosapi::GetParamNames :request) rosapi::GetParamNamesRequest)
(setf (get rosapi::GetParamNames :response) rosapi::GetParamNamesResponse)

(defmethod rosapi::GetParamNamesRequest
  (:response () (instance rosapi::GetParamNamesResponse :init)))

(setf (get rosapi::GetParamNamesRequest :md5sum-) "dc7ae3609524b18034e49294a4ce670e")
(setf (get rosapi::GetParamNamesRequest :datatype-) "rosapi/GetParamNamesRequest")
(setf (get rosapi::GetParamNamesRequest :definition-)
      "---
string[] names
")

(setf (get rosapi::GetParamNamesResponse :md5sum-) "dc7ae3609524b18034e49294a4ce670e")
(setf (get rosapi::GetParamNamesResponse :datatype-) "rosapi/GetParamNamesResponse")
(setf (get rosapi::GetParamNamesResponse :definition-)
      "---
string[] names
")



(provide :rosapi/GetParamNames "dc7ae3609524b18034e49294a4ce670e")


