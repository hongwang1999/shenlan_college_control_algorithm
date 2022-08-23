;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::TestUInt8FixedSizeArray16)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'TestUInt8FixedSizeArray16 (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::TESTUINT8FIXEDSIZEARRAY16")
  (make-package "ROSBRIDGE_LIBRARY::TESTUINT8FIXEDSIZEARRAY16"))

(in-package "ROS")
;;//! \htmlinclude TestUInt8FixedSizeArray16.msg.html


(defclass rosbridge_library::TestUInt8FixedSizeArray16
  :super ros::object
  :slots (_data ))

(defmethod rosbridge_library::TestUInt8FixedSizeArray16
  (:init
   (&key
    ((:data __data) (make-array 16 :initial-element 0 :element-type :char))
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
    ;; uint8[16] _data
    (* 1    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[16] _data
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[16] _data
   (setq _data (make-array 16 :element-type :char))
   (replace _data buf :start2 ptr-) (incf ptr- 16)
   ;;
   self)
  )

(setf (get rosbridge_library::TestUInt8FixedSizeArray16 :md5sum-) "a4e84d0a73514dfe9696b4796e8755e7")
(setf (get rosbridge_library::TestUInt8FixedSizeArray16 :datatype-) "rosbridge_library/TestUInt8FixedSizeArray16")
(setf (get rosbridge_library::TestUInt8FixedSizeArray16 :definition-)
      "uint8[16] data

")



(provide :rosbridge_library/TestUInt8FixedSizeArray16 "a4e84d0a73514dfe9696b4796e8755e7")


