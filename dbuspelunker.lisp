(in-package #:dbuspelunker)

(defun list-names ()
  (dbus:with-open-bus (bus (dbus:system-server-addresses))
    (dbus:with-introspected-object (system-obj bus dbus-path-dbus dbus-service-dbus)
      (system-obj dbus-service-dbus "ListNames"))))

(defun introspect (path destination)
  (dbus:with-open-bus (bus (dbus:system-server-addresses))
    (dbus:invoke-method (dbus:bus-connection bus)
			"Introspect"
			:path path
			:destination destination
			:interface dbus-interface-introspectable)))

(defun convert-string-to-sxml (xml-string)
  (s-xml:parse-xml-string xml-string :output-type :sxml))

(defun convert-string-to-lxml (xml-string)
  (s-xml:parse-xml-string xml-string :output-type :lxml))
