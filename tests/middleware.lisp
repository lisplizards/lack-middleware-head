;; Copyright (c) 2024 John Newton
;; SPDX-License-Identifier: Apache-2.0

(in-package #:lack/middleware/head/tests)

(defun app (env)
  (declare (ignore env))
  `(200
    (:content-type "text/plain"
     :content-length 13)
    ("Hello, World.")))

(deftest middleware
  (testing "removes the body from the response"
           (let* ((app (funcall lack/middleware/head:*lack-middleware-head*
                                #'app))
                  (response (funcall app '(:request-method :HEAD))))
             (ok (equalp (third response) '(""))))))
