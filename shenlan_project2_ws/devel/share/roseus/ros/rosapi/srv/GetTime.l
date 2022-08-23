;; Auto-generated. Do not edit!


(when (boundp 'rosapi::GetTime)
  (if (not (find-package "ROSAPI"))
    (make-package "ROSAPI"))
  (shadow 'GetTime (find-package "ROSAPI")))
(unless (find-package "ROSAPI::GETTIME")
  (make-package "ROSAPI::GETTIME"))
(unless (find-package "ROSAPI::GETTIMEREQUEST")
  (make-package "ROSAPI::GETTIMEREQUEST"))
(unless (find-package "ROSAPI::GETTIMERESPONSE")
  (make-package "ROSAPI::GETTIMERESPONSE"))

(in-package "ROS")





(defclass rosapi::GetTimeRequest
  :super ros::object
  :slots ())

(defmethod rosapi::GetTimeRequest
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

(defclass rosapi::GetTimeResponse
  :super ros::object
  :slots (_time ))

(defmethod rosapi::GetTimeResponse
  (:init
   (&key
    ((:time __time) (instance ros::time :init))
    )
   (send-super :init)
   (setq _time __time)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; time _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rosapi::GetTime
  :super ros::object
  :slots ())

(setf (get rosapi::GetTime :md5sum-) "556a4fb76023a469987922359d08a844")
(setf (get rosapi::GetTime :datatype-) "rosapi/GetTime")
(setf (get rosapi::GetTime :request) rosapi::GetTimeRequest)
(setf (get rosapi::GetTime :response) rosapi::GetTimeResponse)

(defmethod rosapi::GetTimeRequest
  (:response () (instance rosapi::GetTimeResponse :init)))

(setf (get rosapi::GetTimeRequest :md5sum-) "556a4fb76023a469987922359d08a844")
(setf (get rosapi::GetTimeRequest :datatype-) "rosapi/GetTimeRequest")
(setf (get rosapi::GetTimeRequest :definition-)
      "---
time time
")

(setf (get rosapi::GetTimeResponse :md5sum-) "556a4fb76023a469987922359d08a844")
(setf (get rosapi::GetTimeResponse :datatype-) "rosapi/GetTimeResponse")
(setf (get rosapi::GetTimeResponse :definition-)
      "---
time time
")



(provide :rosapi/GetTime "556a4fb76023a469987922359d08a844")


