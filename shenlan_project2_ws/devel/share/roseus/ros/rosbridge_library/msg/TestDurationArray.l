;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::TestDurationArray)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'TestDurationArray (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTDURATIONARRAY")
  (make-package "ROSBRIDGE_LIBRARY::TESTDURATIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude TestDurationArray.msg.html


(defclass rosbridge_library::TestDurationArray
  :super ros::object
  :slots (_durations ))

(defmethod rosbridge_library::TestDurationArray
  (:init
   (&key
    ((:durations __durations) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    )
   (send-super :init)
   (setq _durations __durations)
   self)
  (:durations
   (&optional __durations)
   (if __durations (setq _durations __durations)) _durations)
  (:serialization-length
   ()
   (+
    ;; duration[] _durations
    (* 8    (length _durations)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration[] _durations
     (write-long (length _durations) s)
     (dotimes (i (length _durations))
       (write-long (send (elt _durations i) :sec) s) (write-long (send (elt _durations i) :nsec) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration[] _durations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _durations (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _durations)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get rosbridge_library::TestDurationArray :md5sum-) "8b3bcadc803a7fcbc857c6a1dab53bcd")
(setf (get rosbridge_library::TestDurationArray :datatype-) "rosbridge_library/TestDurationArray")
(setf (get rosbridge_library::TestDurationArray :definition-)
      "duration[] durations
")



(provide :rosbridge_library/TestDurationArray "8b3bcadc803a7fcbc857c6a1dab53bcd")


