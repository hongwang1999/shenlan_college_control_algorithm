
(cl:in-package :asdf)

(defsystem "rosbridge_library-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "SendBytes" :depends-on ("_package_SendBytes"))
    (:file "_package_SendBytes" :depends-on ("_package"))
    (:file "TestArrayRequest" :depends-on ("_package_TestArrayRequest"))
    (:file "_package_TestArrayRequest" :depends-on ("_package"))
    (:file "TestEmpty" :depends-on ("_package_TestEmpty"))
    (:file "_package_TestEmpty" :depends-on ("_package"))
    (:file "TestMultipleRequestFields" :depends-on ("_package_TestMultipleRequestFields"))
    (:file "_package_TestMultipleRequestFields" :depends-on ("_package"))
    (:file "TestMultipleResponseFields" :depends-on ("_package_TestMultipleResponseFields"))
    (:file "_package_TestMultipleResponseFields" :depends-on ("_package"))
    (:file "TestNestedService" :depends-on ("_package_TestNestedService"))
    (:file "_package_TestNestedService" :depends-on ("_package"))
    (:file "TestRequestAndResponse" :depends-on ("_package_TestRequestAndResponse"))
    (:file "_package_TestRequestAndResponse" :depends-on ("_package"))
    (:file "TestRequestOnly" :depends-on ("_package_TestRequestOnly"))
    (:file "_package_TestRequestOnly" :depends-on ("_package"))
    (:file "TestResponseOnly" :depends-on ("_package_TestResponseOnly"))
    (:file "_package_TestResponseOnly" :depends-on ("_package"))
  ))