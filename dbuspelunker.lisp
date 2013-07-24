(in-package #:dbuspelunker)

(defun list-names ()
  (dbus:with-open-bus (bus (dbus:system-server-addresses))
    (dbus:with-introspected-object (system-obj bus "/org/freedesktop" "org.freedesktop.DBus")
      (system-obj "org.freedesktop.DBus" "ListNames"))))

#+nil(defun introspect ())
