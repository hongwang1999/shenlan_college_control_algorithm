
(cl:in-package :asdf)

(defsystem "rosapi-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TypeDef" :depends-on ("_package_TypeDef"))
    (:file "_package_TypeDef" :depends-on ("_package"))
  ))