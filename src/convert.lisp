(in-package :cl-user)
(defpackage crane.convert
  (:use :cl)
  (:documentation "Convert between Lisp and SQL values."))
(in-package :crane.convert)

;;; Generics

(defgeneric lisp-to-database (database value type)
  (:documentation "Convert a Lisp value to a value appropriate for the given
  database, given the SQL type."))

(defgeneric database-to-lisp (database value type)
  (:documentation "Convert a database value to a Lisp value, given the SQL
  type."))