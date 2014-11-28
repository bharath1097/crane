---
title: Connecting
layout: docs
---

Crane autoconnects to all the databases specified in the `:databases` key of the
configuration when the `crane:connect` function is called (No parameters).

Configuration for the databases might look like this:

~~~lisp
(setup
 :migrations-directory
 (asdf:system-relative-pathname :myapp #p"migrations/")
 :databases
 '(:main
   (:type :postgres
    :name "myapp_db"
    :user "user"
    :pass "user")))

(connect)
~~~

The value of `:databases` is a plist that maps a database's name (Not the actual
name, but rather an identifier, like `:main` or `:users-db`) to a list of
connection parameters, called the *connection spec*.

Crane maintains a list of connection specs for every supported database backend,
and ensures that all required parameters and no parameters other than the
required and optional ones are passed. Connection specs for all supported
backends are listed in *Appendix A: Connecting*.
