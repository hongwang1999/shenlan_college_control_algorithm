;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::TestTimeArray)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'TestTimeArray (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTTIMEARRAY")
  (make-package "ROSBRIDGE_LIBRARY::TESTTIMEARRAY"))

(in-package "ROS")
;;//! \htmlinclude TestTimeArray.msg.html


(defclass rosbridge_library::TestTimeArray
  :super ros::object
  :slots (_times ))

(defmethod rosbridge_library::TestTimeArray
  (:init
   (&key
    ((:times __times) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    )
   (send-super :init)
   (setq _times __times)
   self)
  (:times
   (&optional __times)
   (if __times (setq _times __times)) _times)
  (:serialization-length
   ()
   (+
    ;; time[] _times
    (* 8    (length _times)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time[] _times
     (write-long (length _times) s)
     (dotimes (i (length _times))
       (write-long (send (elt _times i) :sec) s) (write-long (send (elt _times i) :nsec) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time[] _times
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _times (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _times)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get rosbridge_library::TestTimeArray :md5sum-) "237b97d24fd33588beee4cd8978b149d")
(setf (get rosbridge_library::TestTimeArray :datatype-) "rosbridge_library/TestTimeArray")
(setf (get rosbridge_library::TestTimeArray :definition-)
      "time[] times
")



(provide :rosbridge_library/TestTimeArray "237b97d24fd33588beee4cd8978b149d")


