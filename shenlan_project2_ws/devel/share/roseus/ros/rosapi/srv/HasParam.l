;; Auto-generated. Do not edit!


(when (boundp 'rosapi::HasParam)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'HasParam (find-package "ROSAPI")))
(unless (find-package "ROSAPI::HASPARAM")
  (make-package "ROSAPI::HASPARAM"))
(unless (find-package "ROSAPI::HASPARAMREQUEST")
  (make-package "ROSAPI::HASPARAMREQUEST"))
(unless (find-package "ROSAPI::HASPARAMRESPONSE")
  (make-package "ROSAPI::HASPARAMRESPONSE"))

(in-package "ROS")





(defclass rosapi::HasParamRequest
  :super ros::object
  :slots (_name ))

(defmethod rosapi::HasParamRequest
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

(defclass rosapi::HasParamResponse
  :super ros::object
  :slots (_exists ))

(defmethod rosapi::HasParamResponse
  (:init
   (&key
    ((:exists __exists) nil)
    )
   (send-super :init)
   (setq _exists __exists)
   self)
  (:exists
   (&optional (__exists :null))
   (if (not (eq __exists :null)) (setq _exists __exists)) _exists)
  (:serialization-length
   ()
   (+
    ;; bool _exists
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _exists
       (if _exists (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _exists
     (setq _exists (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rosapi::HasParam
  :super ros::object
  :slots ())

(setf (get rosapi::HasParam :md5sum-) "ed3df286bd6dff9b961770f577454ea9")
(setf (get rosapi::HasParam :datatype-) "rosapi/HasParam")
(setf (get rosapi::HasParam :request) rosapi::HasParamRequest)
(setf (get rosapi::HasParam :response) rosapi::HasParamResponse)

(defmethod rosapi::HasParamRequest
  (:response () (instance rosapi::HasParamResponse :init)))

(setf (get rosapi::HasParamRequest :md5sum-) "ed3df286bd6dff9b961770f577454ea9")
(setf (get rosapi::HasParamRequest :datatype-) "rosapi/HasParamRequest")
(setf (get rosapi::HasParamRequest :definition-)
      "string name
---
bool exists
")

(setf (get rosapi::HasParamResponse :md5sum-) "ed3df286bd6dff9b961770f577454ea9")
(setf (get rosapi::HasParamResponse :datatype-) "rosapi/HasParamResponse")
(setf (get rosapi::HasParamResponse :definition-)
      "string name
---
bool exists
")



(provide :rosapi/HasParam "ed3df286bd6dff9b961770f577454ea9")


