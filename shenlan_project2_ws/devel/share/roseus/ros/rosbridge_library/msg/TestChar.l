;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::TestChar)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'TestChar (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTCHAR")
  (make-package "ROSBRIDGE_LIBRARY::TESTCHAR"))

(in-package "ROS")
;;//! \htmlinclude TestChar.msg.html


(defclass rosbridge_library::TestChar
  :super ros::object
  :slots (_data ))

(defmethod rosbridge_library::TestChar
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; char[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; char[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-byte (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; char[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get rosbridge_library::TestChar :md5sum-) "7b8d15902c8b049d5a32b4cb73fa86f5")
(setf (get rosbridge_library::TestChar :datatype-) "rosbridge_library/TestChar")
(setf (get rosbridge_library::TestChar :definition-)
      "char[] data
")



(provide :rosbridge_library/TestChar "7b8d15902c8b049d5a32b4cb73fa86f5")


