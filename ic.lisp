(in-package ic)

; CONFIGURATION

(defvar *enabled* t)

(defvar *prefix* "ic| ")

(defvar *separator* " = ")

(defvar *ic-out-stream* t)

; UTILS

(defun to-string (exp)
    (format nil "~A" exp))

; ITNERFACE

(defun ic-disable ()
    (setf *enabled* nil))

(defun ic-enable ()
    (setf *enabled* t))

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
