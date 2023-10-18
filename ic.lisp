(ql:quickload '(alexandria))

(defpackage :ic
  (:use :cl :alexandria))

(in-package ic)

(defvar *enabled* t)

(defvar *prefix* "ic| ")

(defvar *separator* " = ")

(defvar *ic-out-stream* t)


(defun to-string (exp)
    (format nil "~A" exp))

(defmacro ic-disable ()
    `(setf *enabled*

(defmacro ic (exp)
    (with-gensyms (exp-str exp-val)
    `(if *enabled* 
         (let ((,exp-str (to-string ',exp))
               (,exp-val ,exp))
             (format *ic-out-stream*
                     "~%~A~A~A~A"
                     *prefix*
                     ,exp-str
                     *separator*
                     ,exp-val)
             ,exp-val)
         ,exp)))
