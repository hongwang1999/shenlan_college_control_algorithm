;; Auto-generated. Do not edit!


(when (boundp 'rosapi::Nodes)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'Nodes (find-package "ROSAPI")))
(unless (find-package "ROSAPI::NODES")
  (make-package "ROSAPI::NODES"))
(unless (find-package "ROSAPI::NODESREQUEST")
  (make-package "ROSAPI::NODESREQUEST"))
(unless (find-package "ROSAPI::NODESRESPONSE")
  (make-package "ROSAPI::NODESRESPONSE"))

(in-package "ROS")





(defclass rosapi::NodesRequest
  :super ros::object
  :slots ())

(defmethod rosapi::NodesRequest
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

(defclass rosapi::NodesResponse
  :super ros::object
  :slots (_nodes ))

(defmethod rosapi::NodesResponse
  (:init
   (&key
    ((:nodes __nodes) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _nodes __nodes)
   self)
  (:nodes
   (&optional __nodes)
   (if __nodes (setq _nodes __nodes)) _nodes)
  (:serialization-length
   ()
   (+
    ;; string[] _nodes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _nodes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _nodes
     (write-long (length _nodes) s)
     (dolist (elem _nodes)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _nodes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass rosapi::Nodes
  :super ros::object
  :slots ())

(setf (get rosapi::Nodes :md5sum-) "3d07bfda1268b4f76b16b7ba8a82665d")
(setf (get rosapi::Nodes :datatype-) "rosapi/Nodes")
(setf (get rosapi::Nodes :request) rosapi::NodesRequest)
(setf (get rosapi::Nodes :response) rosapi::NodesResponse)

(defmethod rosapi::NodesRequest
  (:response () (instance rosapi::NodesResponse :init)))

(setf (get rosapi::NodesRequest :md5sum-) "3d07bfda1268b4f76b16b7ba8a82665d")
(setf (get rosapi::NodesRequest :datatype-) "rosapi/NodesRequest")
(setf (get rosapi::NodesRequest :definition-)
      "
---
string[] nodes
")

(setf (get rosapi::NodesResponse :md5sum-) "3d07bfda1268b4f76b16b7ba8a82665d")
(setf (get rosapi::NodesResponse :datatype-) "rosapi/NodesResponse")
(setf (get rosapi::NodesResponse :definition-)
      "
---
string[] nodes
")



(provide :rosapi/Nodes "3d07bfda1268b4f76b16b7ba8a82665d")


