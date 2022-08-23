;; Auto-generated. Do not edit!


(when (boundp 'rosapi::GetActionServers)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'GetActionServers (find-package "ROSAPI")))
(unless (find-package "ROSAPI::GETACTIONSERVERS")
  (make-package "ROSAPI::GETACTIONSERVERS"))
(unless (find-package "ROSAPI::GETACTIONSERVERSREQUEST")
  (make-package "ROSAPI::GETACTIONSERVERSREQUEST"))
(unless (find-package "ROSAPI::GETACTIONSERVERSRESPONSE")
  (make-package "ROSAPI::GETACTIONSERVERSRESPONSE"))

(in-package "ROS")





(defclass rosapi::GetActionServersRequest
  :super ros::object
  :slots ())

(defmethod rosapi::GetActionServersRequest
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

(defclass rosapi::GetActionServersResponse
  :super ros::object
  :slots (_action_servers ))

(defmethod rosapi::GetActionServersResponse
  (:init
   (&key
    ((:action_servers __action_servers) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _action_servers __action_servers)
   self)
  (:action_servers
   (&optional __action_servers)
   (if __action_servers (setq _action_servers __action_servers)) _action_servers)
  (:serialization-length
   ()
   (+
    ;; string[] _action_servers
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _action_servers)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _action_servers
     (write-long (length _action_servers) s)
     (dolist (elem _action_servers)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _action_servers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action_servers (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _action_servers i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rosapi::GetActionServers
  :super ros::object
  :slots ())

(setf (get rosapi::GetActionServers :md5sum-) "46807ba271844ac5ba4730a47556b236")
(setf (get rosapi::GetActionServers :datatype-) "rosapi/GetActionServers")
(setf (get rosapi::GetActionServers :request) rosapi::GetActionServersRequest)
(setf (get rosapi::GetActionServers :response) rosapi::GetActionServersResponse)

(defmethod rosapi::GetActionServersRequest
  (:response () (instance rosapi::GetActionServersResponse :init)))

(setf (get rosapi::GetActionServersRequest :md5sum-) "46807ba271844ac5ba4730a47556b236")
(setf (get rosapi::GetActionServersRequest :datatype-) "rosapi/GetActionServersRequest")
(setf (get rosapi::GetActionServersRequest :definition-)
      "
---
string[] action_servers
")

(setf (get rosapi::GetActionServersResponse :md5sum-) "46807ba271844ac5ba4730a47556b236")
(setf (get rosapi::GetActionServersResponse :datatype-) "rosapi/GetActionServersResponse")
(setf (get rosapi::GetActionServersResponse :definition-)
      "
---
string[] action_servers
")



(provide :rosapi/GetActionServers "46807ba271844ac5ba4730a47556b236")


