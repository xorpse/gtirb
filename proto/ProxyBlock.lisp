
;;;;    ProxyBlock.lisp

;;; Generated by the protocol buffer compiler.  DO NOT EDIT!


(cl:in-package #:common-lisp-user)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package '#:gtirb.proto)
    (make-package '#:gtirb.proto :use nil)))
(in-package #:gtirb.proto)
(cl:declaim #.com.google.base:*optimize-default*)

(cl:defclass proxy-block (pb:protocol-buffer)
  (
  (uuid
   :accessor uuid
   :initform (cl:make-array 0 :element-type '(cl:unsigned-byte 8))
   :type (cl:simple-array (cl:unsigned-byte 8) (cl:*)))
  (%has-bits%
   :accessor %has-bits%
   :initform 0
   :type (cl:unsigned-byte 1))
  (pb::%cached-size%
   :initform 0
   :type (cl:integer 0 #.(cl:1- cl:array-dimension-limit)))
  ))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'proxy-block))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'uuid))


(cl:defmethod (cl:setf uuid) :after (x (self proxy-block))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-uuid)
  (cl:defgeneric has-uuid (proto)))
(cl:defmethod has-uuid ((self proxy-block))
  (cl:logbitp 0 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-uuid))

(cl:unless (cl:fboundp 'clear-uuid)
  (cl:defgeneric clear-uuid (proto)))
(cl:defmethod clear-uuid ((self proxy-block))
  (cl:setf (cl:slot-value self 'uuid) (cl:make-array 0 :element-type '(cl:unsigned-byte 8)))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-uuid))


(cl:defmethod cl:print-object ((self proxy-block) stream)
  (cl:pprint-logical-block (stream cl:nil)
    (cl:print-unreadable-object (self stream :type cl:t :identity cl:t)
      (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_uuid: ~s" (uuid self)))
      ))
  (cl:values))

(cl:defmethod pb:clear ((self proxy-block))
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf (cl:slot-value self 'uuid) (cl:make-array 0 :element-type '(cl:unsigned-byte 8))))
  (cl:setf (cl:slot-value self '%has-bits%) 0)
  (cl:values))

(cl:defmethod pb:is-initialized ((self proxy-block))
  cl:t)

(cl:defmethod pb:octet-size ((self proxy-block))
  (cl:let ((size 0))
    ;; bytes uuid = 1[json_name = "uuid"];
    (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
      (cl:incf size 1)
      (cl:incf size (cl:let ((s (cl:length (cl:slot-value self 'uuid))))
        (cl:+ s (varint:length32 s)))))
    (cl:setf (cl:slot-value self 'pb::%cached-size%) size)
    size))

(cl:defmethod pb:serialize ((self proxy-block) buffer index limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index index limit)
              (cl:ignorable buffer limit))
  ;; bytes uuid = 1[json_name = "uuid"];
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 10))
    (cl:setf index (wire-format:write-octets-carefully buffer index limit (cl:slot-value self 'uuid))))
  index)

(cl:defmethod pb:merge-from-array ((self proxy-block) buffer start limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index start limit))
  (cl:do ((index start index))
      ((cl:>= index limit) index)
    (cl:declare (cl:type com.google.base:vector-index index))
    (cl:multiple-value-bind (tag new-index)
        (varint:parse-uint32-carefully buffer index limit)
      (cl:setf index new-index)
      (cl:case tag
        ;; bytes uuid = 1[json_name = "uuid"];
        ((10)
          (cl:multiple-value-bind (value new-index)
              (wire-format:read-octets-carefully buffer index limit)
            (cl:setf (cl:slot-value self 'uuid) value)
            (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1)
            (cl:setf index new-index)))
        (cl:t
          (cl:when (cl:= (cl:logand tag 7) 4)
            (cl:return-from pb:merge-from-array index))
          (cl:setf index (wire-format:skip-field buffer index limit tag)))))))

(cl:defmethod pb:merge-from-message ((self proxy-block) (from proxy-block))
  (cl:when (cl:logbitp 0 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'uuid) (cl:slot-value from 'uuid))
    (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))
)


