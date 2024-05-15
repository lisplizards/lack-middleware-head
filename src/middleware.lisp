;; Copyright (c) 2024 John Newton
;; SPDX-License-Identifier: Apache-2.0

(in-package #:lack/middleware/head)

(defparameter *lack-middleware-head*
  #'(lambda (app)
      (declare (type function app))
      #'(lambda (env)
          (declare (type list env))
          (let ((response (funcall app env)))
            (declare (type list response))
            (when (eq :HEAD (getf env :request-method))
              (setf (nth 2 response) '("")))
            response))))
