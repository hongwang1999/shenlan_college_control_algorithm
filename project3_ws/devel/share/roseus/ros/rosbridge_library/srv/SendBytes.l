;; Auto-generated. Do not edit!


(when (boundp 'rosbridge_library::SendBytes)
  (if (not (find-package "ROSBRIDGE_LIBRARY"))
    (make-package "ROSBRIDGE_LIBRARY"))
  (shadow 'SendBytes (find-package "ROSBRIDGE_LIBRARY")))
(unless (find-package "ROSBRIDGE_LIBRARY::SENDBYTES")
  (make-package "ROSBRIDGE_LIBRARY::SENDBYTES"))
(unless (find-package "ROSBRIDGE_LIBRARY::SENDBYTESREQUEST")
  (make-package "ROSBRIDGE_LIBRARY::SENDBYTESREQUEST"))
(unless (find-package "ROSBRIDGE_LIBRARY::SENDBYTESRESPONSE")
  (make-package "ROSBRIDGE_LIBRARY::SENDBYTESRESPONSE"))

(in-package "ROS")





(defclass rosbridge_library::SendBytesRequest
  :super ros::object
  :slots (_count ))

(defmethod rosbridge_library::SendBytesRequest
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int64 _count
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _count
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _count (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _count) (= (length (_count . bv)) 2)) ;; bignum
              (write-long (ash (elt (_count . bv) 0) 0) s)
              (write-long (ash (elt (_count . bv) 1) -1) s))
             ((and (class _count) (= (length (_count . bv)) 1)) ;; big1
              (write-long (elt (_count . bv) 0) s)
              (write-long (if (>= _count 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _count s)(write-long (if (>= _count 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _count
#+(or :alpha :irix6 :x86_64)
      (setf _count (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _count (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass rosbridge_library::SendBytesResponse
  :super ros::object
  :slots (_data ))

(defmethod rosbridge_library::SendBytesResponse
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass rosbridge_library::SendBytes
  :super ros::object
  :slots ())

(setf (get rosbridge_library::SendBytes :md5sum-) "d875457256decc7436099d9d612ebf8a")
(setf (get rosbridge_library::SendBytes :datatype-) "rosbridge_library/SendBytes")
(setf (get rosbridge_library::SendBytes :request) rosbridge_library::SendBytesRequest)
(setf (get rosbridge_library::SendBytes :response) rosbridge_library::SendBytesResponse)

(defmethod rosbridge_library::SendBytesRequest
  (:response () (instance rosbridge_library::SendBytesResponse :init)))

(setf (get rosbridge_library::SendBytesRequest :md5sum-) "d875457256decc7436099d9d612ebf8a")
(setf (get rosbridge_library::SendBytesRequest :datatype-) "rosbridge_library/SendBytesRequest")
(setf (get rosbridge_library::SendBytesRequest :definition-)
      "int64 count
---
string data

")

(setf (get rosbridge_library::SendBytesResponse :md5sum-) "d875457256decc7436099d9d612ebf8a")
(setf (get rosbridge_library::SendBytesResponse :datatype-) "rosbridge_library/SendBytesResponse")
(setf (get rosbridge_library::SendBytesResponse :definition-)
      "int64 count
---
string data

")



(provide :rosbridge_library/SendBytes "d875457256decc7436099d9d612ebf8a")


