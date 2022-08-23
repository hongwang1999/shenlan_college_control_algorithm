;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::TestUInt8)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'TestUInt8 (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTUINT8")
  (make-package "ROSBRIDGE_LIBRARY::TESTUINT8"))

(in-package "ROS")
;;//! \htmlinclude TestUInt8.msg.html


(defclass rosbridge_library::TestUInt8
  :super ros::object
  :slots (_data ))

(defmethod rosbridge_library::TestUInt8
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
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
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get rosbridge_library::TestUInt8 :md5sum-) "f43a8e1b362b75baa741461b46adc7e0")
(setf (get rosbridge_library::TestUInt8 :datatype-) "rosbridge_library/TestUInt8")
(setf (get rosbridge_library::TestUInt8 :definition-)
      "uint8[] data
")



(provide :rosbridge_library/TestUInt8 "f43a8e1b362b75baa741461b46adc7e0")


