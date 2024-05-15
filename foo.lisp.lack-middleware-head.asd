;; Copyright (c) 2024 John Newton
;; SPDX-License-Identifier: Apache-2.0

(defsystem "foo.lisp.lack-middleware-head"
  :version "1.0.0"
  :author "John Newton"
  :license "Apache-2.0"
  :homepage "https://github.com/lisplizards/lack-middleware-head"
  :bug-tracker "https://github.com/lisplizards/lack-middleware-head/issues"
  :source-control (:git "https://github.com/lisplizards/lack-middleware-head.git")
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "middleware" :depends-on ("package"))
                 (:file "package"))))
  :description "Lack middleware to return an empty body for responses to HEAD requests"
  :in-order-to ((test-op (test-op "foo.lisp.lack-middleware-head/tests"))))

(defsystem "foo.lisp.lack-middleware-head/tests"
  :author "John Newton"
  :license "Apache-2.0"
  :depends-on ("foo.lisp.lack-middleware-head"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "middleware" :depends-on ("package"))
                 (:file "package"))))
  :description "Test system for foo.lisp.lack-middleware-head"
  :perform (test-op (op c) (symbol-call :rove :run c)))
