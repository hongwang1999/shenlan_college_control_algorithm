;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::TestHeaderArray)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'TestHeaderArray (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTHEADERARRAY")
  (make-package "ROSBRIDGE_LIBRARY::TESTHEADERARRAY"))

(in-package "ROS")
;;//! \htmlinclude TestHeaderArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosbridge_library::TestHeaderArray
  :super ros::object
  :slots (_header ))

(defmethod rosbridge_library::TestHeaderArray
  (:init
   (&key
    ((:header __header) ())
    )
   (send-super :init)
   (setq _header __header)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header[] _header
    (apply #'+ (send-all _header :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header[] _header
     (write-long (length _header) s)
     (dolist (elem _header)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header[] _header
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _header (let (r) (dotimes (i n) (push (instance std_msgs::Header :init) r)) r))
     (dolist (elem- _header)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rosbridge_library::TestHeaderArray :md5sum-) "d7be0bb39af8fb9129d5a76e6b63a290")
(setf (get rosbridge_library::TestHeaderArray :datatype-) "rosbridge_library/TestHeaderArray")
(setf (get rosbridge_library::TestHeaderArray :definition-)
      "std_msgs/Header[] header
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :rosbridge_library/TestHeaderArray "d7be0bb39af8fb9129d5a76e6b63a290")


