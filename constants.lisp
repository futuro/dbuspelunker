(in-package :dbuspelunker)

;; The following more-or-less borrowed from dbus.el in Emacs
;; This is a really fantastic layout and I like that it includes the definitions
;; as comments
(defconstant dbus-service-dbus "org.freedesktop.DBus"
  "The bus name used to talk to the bus itself.")

(defconstant dbus-path-dbus "/org/freedesktop/DBus"
  "The object path used to talk to the bus itself.")

;; Default D-Bus interfaces.

(defconstant dbus-interface-dbus "org.freedesktop.DBus"
  "The interface exported by the service `dbus-service-dbus'.")

(defconstant dbus-interface-introspectable
  (concatenate 'string dbus-interface-dbus ".Introspectable")
  "The interface supported by introspectable objects.
See URL `http://dbus.freedesktop.org/doc/dbus-specification.html#standard-interfaces-introspectable'.")

;; <interface name="org.freedesktop.DBus.Introspectable">
;;   <method name="Introspect">
;;     <arg name="data" type="s" direction="out"/>
;;   </method>
;; </interface>

(defconstant dbus-interface-properties
  (concatenate 'string dbus-interface-dbus ".Properties")
  "The interface for property objects.
See URL `http://dbus.freedesktop.org/doc/dbus-specification.html#standard-interfaces-properties'.")

;; <interface name="org.freedesktop.DBus.Properties">
;;   <method name="Get">
;;     <arg name="interface" type="s" direction="in"/>
;;     <arg name="propname"  type="s" direction="in"/>
;;     <arg name="value"     type="v" direction="out"/>
;;   </method>
;;   <method name="Set">
;;     <arg name="interface" type="s" direction="in"/>
;;     <arg name="propname"  type="s" direction="in"/>
;;     <arg name="value"     type="v" direction="in"/>
;;   </method>
;;   <method name="GetAll">
;;     <arg name="interface" type="s" direction="in"/>
;;     <arg name="props"     type="a{sv}" direction="out"/>
;;   </method>
;;   <signal name="PropertiesChanged">
;;     <arg name="interface" type="s"/>
;;     <arg name="changed_properties"     type="a{sv}"/>
;;     <arg name="invalidated_properties" type="as"/>
;;   </signal>
;; </interface>

;; End borrowed code
