
(cl:in-package :asdf)

(defsystem "arithmetic_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "arithmetic_reply" :depends-on ("_package_arithmetic_reply"))
    (:file "_package_arithmetic_reply" :depends-on ("_package"))
  ))