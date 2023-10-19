(asdf:defsystem :cl-ic
    :description "Port of Python's IceCream to Common Lisp."
    :author "Filipp Druan druanf@bk.ru"
    :license "MIT"
    :version "1"
    :depends-on (alexandria)
    :components ((:file "package")
                 (:file "ic")))
