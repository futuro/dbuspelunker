;; DBuSpelunker System definition

(asdf:defsystem #:dbuspelunker
  :description "DBuSpelunker explores the deep caves of D-Bus on your system."
  :depends-on (#:dbus #:s-xml)
  :serial t
  :components ((:file "package")
	       (:file "constants")
	       (:file "dbuspelunker")))
