
;;;;    Block.lisp

;;; Generated by the protocol buffer compiler.  DO NOT EDIT!


(cl:in-package #:common-lisp-user)
(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package '#:proto-v0)
    (make-package '#:proto-v0 :use nil)))
(in-package #:proto-v0)
(cl:declaim #.com.google.base:*optimize-default*)

(cl:defclass block (pb:protocol-buffer)
  (
  (uuid
   :accessor uuid
   :initform (cl:make-array 0 :element-type '(cl:unsigned-byte 8))
   :type (cl:simple-array (cl:unsigned-byte 8) (cl:*)))
  (address
   :accessor address
   :initform 0
   :type (cl:unsigned-byte 64))
  (size
   :accessor size
   :initform 0
   :type (cl:unsigned-byte 64))
  (decode-mode
   :accessor decode-mode
   :initform 0
   :type (cl:unsigned-byte 64))
  (%has-bits%
   :accessor %has-bits%
   :initform 0
   :type (cl:unsigned-byte 4))
  (pb::%cached-size%
   :initform 0
   :type (cl:integer 0 #.(cl:1- cl:array-dimension-limit)))
  ))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'block))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'uuid))


(cl:defmethod (cl:setf uuid) :after (x (self block))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-uuid)
  (cl:defgeneric has-uuid (proto)))
(cl:defmethod has-uuid ((self block))
  (cl:logbitp 0 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-uuid))

(cl:unless (cl:fboundp 'clear-uuid)
  (cl:defgeneric clear-uuid (proto)))
(cl:defmethod clear-uuid ((self block))
  (cl:setf (cl:slot-value self 'uuid) (cl:make-array 0 :element-type '(cl:unsigned-byte 8)))
  (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-uuid))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'address))


(cl:defmethod (cl:setf address) :after (x (self block))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-address)
  (cl:defgeneric has-address (proto)))
(cl:defmethod has-address ((self block))
  (cl:logbitp 1 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-address))

(cl:unless (cl:fboundp 'clear-address)
  (cl:defgeneric clear-address (proto)))
(cl:defmethod clear-address ((self block))
  (cl:setf (cl:slot-value self 'address) 0)
  (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-address))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'size))


(cl:defmethod (cl:setf size) :after (x (self block))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-size)
  (cl:defgeneric has-size (proto)))
(cl:defmethod has-size ((self block))
  (cl:logbitp 2 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-size))

(cl:unless (cl:fboundp 'clear-size)
  (cl:defgeneric clear-size (proto)))
(cl:defmethod clear-size ((self block))
  (cl:setf (cl:slot-value self 'size) 0)
  (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-size))

(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'decode-mode))


(cl:defmethod (cl:setf decode-mode) :after (x (self block))
  (cl:declare (cl:ignore x))
  (cl:setf (cl:ldb (cl:byte 1 3) (cl:slot-value self '%has-bits%)) 1))

(cl:unless (cl:fboundp 'has-decode-mode)
  (cl:defgeneric has-decode-mode (proto)))
(cl:defmethod has-decode-mode ((self block))
  (cl:logbitp 3 (cl:slot-value self '%has-bits%)))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'has-decode-mode))

(cl:unless (cl:fboundp 'clear-decode-mode)
  (cl:defgeneric clear-decode-mode (proto)))
(cl:defmethod clear-decode-mode ((self block))
  (cl:setf (cl:slot-value self 'decode-mode) 0)
  (cl:setf (cl:ldb (cl:byte 1 3) (cl:slot-value self '%has-bits%)) 0)
  (cl:values))
(cl:eval-when (:load-toplevel :compile-toplevel :execute)
  (cl:export 'clear-decode-mode))


(cl:defmethod cl:print-object ((self block) stream)
  (cl:pprint-logical-block (stream cl:nil)
    (cl:print-unreadable-object (self stream :type cl:t :identity cl:t)
      (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_uuid: ~s" (uuid self)))
      (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_address: ~s" (address self)))
      (cl:when (cl:logbitp 2 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_size: ~s" (size self)))
      (cl:when (cl:logbitp 3 (cl:slot-value self '%has-bits%))
        (cl:format stream " ~_decode-mode: ~s" (decode-mode self)))
      ))
  (cl:values))

(cl:defmethod pb:clear ((self block))
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf (cl:slot-value self 'uuid) (cl:make-array 0 :element-type '(cl:unsigned-byte 8))))
  (cl:setf (cl:slot-value self 'address) 0)
  (cl:setf (cl:slot-value self 'size) 0)
  (cl:setf (cl:slot-value self 'decode-mode) 0)
  (cl:setf (cl:slot-value self '%has-bits%) 0)
  (cl:values))

(cl:defmethod pb:is-initialized ((self block))
  cl:t)

(cl:defmethod pb:octet-size ((self block))
  (cl:let ((size 0))
    ;; bytes uuid = 1[json_name = "uuid"];
    (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
      (cl:incf size 1)
      (cl:incf size (cl:let ((s (cl:length (cl:slot-value self 'uuid))))
        (cl:+ s (varint:length32 s)))))
    ;; uint64 address = 2[json_name = "address"];
    (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
      (cl:incf size
        (cl:+ 1 (varint:length64 (cl:slot-value self 'address)))))
    ;; uint64 size = 3[json_name = "size"];
    (cl:when (cl:logbitp 2 (cl:slot-value self '%has-bits%))
      (cl:incf size
        (cl:+ 1 (varint:length64 (cl:slot-value self 'size)))))
    ;; uint64 decode_mode = 4[json_name = "decodeMode"];
    (cl:when (cl:logbitp 3 (cl:slot-value self '%has-bits%))
      (cl:incf size
        (cl:+ 1 (varint:length64 (cl:slot-value self 'decode-mode)))))
    (cl:setf (cl:slot-value self 'pb::%cached-size%) size)
    size))

(cl:defmethod pb:serialize ((self block) buffer index limit)
  (cl:declare (cl:type com.google.base:octet-vector buffer)
              (cl:type com.google.base:vector-index index limit)
              (cl:ignorable buffer limit))
  ;; bytes uuid = 1[json_name = "uuid"];
  (cl:when (cl:logbitp 0 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 10))
    (cl:setf index (wire-format:write-octets-carefully buffer index limit (cl:slot-value self 'uuid))))
  ;; uint64 address = 2[json_name = "address"];
  (cl:when (cl:logbitp 1 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 16))
    (cl:setf index (varint:encode-uint64-carefully buffer index limit (cl:slot-value self 'address))))
  ;; uint64 size = 3[json_name = "size"];
  (cl:when (cl:logbitp 2 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 24))
    (cl:setf index (varint:encode-uint64-carefully buffer index limit (cl:slot-value self 'size))))
  ;; uint64 decode_mode = 4[json_name = "decodeMode"];
  (cl:when (cl:logbitp 3 (cl:slot-value self '%has-bits%))
    (cl:setf index (varint:encode-uint32-carefully buffer index limit 32))
    (cl:setf index (varint:encode-uint64-carefully buffer index limit (cl:slot-value self 'decode-mode))))
  index)

(cl:defmethod pb:merge-from-array ((self block) buffer start limit)
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
        ;; uint64 address = 2[json_name = "address"];
        ((16)
          (cl:multiple-value-bind (value new-index)
              (varint:parse-uint64-carefully buffer index limit)
            (cl:setf (cl:slot-value self 'address) value)
            (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1)
            (cl:setf index new-index)))
        ;; uint64 size = 3[json_name = "size"];
        ((24)
          (cl:multiple-value-bind (value new-index)
              (varint:parse-uint64-carefully buffer index limit)
            (cl:setf (cl:slot-value self 'size) value)
            (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 1)
            (cl:setf index new-index)))
        ;; uint64 decode_mode = 4[json_name = "decodeMode"];
        ((32)
          (cl:multiple-value-bind (value new-index)
              (varint:parse-uint64-carefully buffer index limit)
            (cl:setf (cl:slot-value self 'decode-mode) value)
            (cl:setf (cl:ldb (cl:byte 1 3) (cl:slot-value self '%has-bits%)) 1)
            (cl:setf index new-index)))
        (cl:t
          (cl:when (cl:= (cl:logand tag 7) 4)
            (cl:return-from pb:merge-from-array index))
          (cl:setf index (wire-format:skip-field buffer index limit tag)))))))

(cl:defmethod pb:merge-from-message ((self block) (from block))
  (cl:when (cl:logbitp 0 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'uuid) (cl:slot-value from 'uuid))
    (cl:setf (cl:ldb (cl:byte 1 0) (cl:slot-value self '%has-bits%)) 1))
  (cl:when (cl:logbitp 1 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'address) (cl:slot-value from 'address))
    (cl:setf (cl:ldb (cl:byte 1 1) (cl:slot-value self '%has-bits%)) 1))
  (cl:when (cl:logbitp 2 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'size) (cl:slot-value from 'size))
    (cl:setf (cl:ldb (cl:byte 1 2) (cl:slot-value self '%has-bits%)) 1))
  (cl:when (cl:logbitp 3 (cl:slot-value from '%has-bits%))
    (cl:setf (cl:slot-value self 'decode-mode) (cl:slot-value from 'decode-mode))
    (cl:setf (cl:ldb (cl:byte 1 3) (cl:slot-value self '%has-bits%)) 1))
)


