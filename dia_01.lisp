;; Day one of magic

10 ; an atom
:THING ;Another atom
t  ;another atom

(+ 1 2 3 4) ; an s-expressio

'(4 :foo t)  ; another s-expression

;;; Comments

;;; 1. Primitive datatypes and operators

;;; Symbols

'coco ; => COCO Notice that the symbol is upper-cased auto

;; Intern manually creates a symbor from a string

(intern "AAAA")
(intern "aaa")

;;; Numbers
9999999999999999999999999 ; integers
#b111                     ; binary
#o111                     ; octal
#x111                     ; haxadicimal
2.14159s0                 ; single
2.14159d0                 ; double
1/2                       ; ratio
#C(1 2)                   ; complex numbers

;; Functions applications is written (f x y z ...)

'(+ 1 2)    ;
(funcall #'+ 1 2 3)
(+ 1 1)
(- 8 1)
(* 10 2)
(expt 2 3)
(mod 5 2)
(/ 35 5)
(/ 1 3)
(+ #C(1 2) #C(6 -4))

;;; Booleans
t
nil
(not nil)
(and 0 t)
(or 0 nil)

;;; Characters
#\A
#\¦Ë
#\u03BB

;; Strings are fixed-length arrays of characters.
"Hello, worlds!"
"Benjamin \"Bugsy\" Siegel"

;; String can be concatenated too!
(concatenate 'string "Hello " "World!")

;; A string can be treated like a sequence of characters
(elt "Apple" 1)

;; format can be used to format string:
(format nil "~a can be ~a" "string" "formatted")

;; Printing is pretty easy; ~% is the format specifier for newline.
(format t "Common Lisp is groovy. Dude.~%")

;; Variables
(defparameter *some-var* 5)

;; Unicode characters.
(defparameter *A¦«B* nil)

(let ((me "dance with you"))
  me)

;; Struct and collections

(defstruct dog name breed age)
(defparameter *rover*
  (make-dog :name "rover"
	    :breed "collie"
	    :age 5))
*rover*

(dog-p *rover*)

(dog-name *rover*)

;;Pairs
(cons 'SUBJECT 'VERB)
(car (cons 'SUBJECT 'VERB))
(cdr (cons 'SUBJECT 'VERB))

;; Lists
(cons 1 (cons 2 (cons 3 nil)))

(list 1 2 3)

'(1 2 3)

(cons 4 '(1 2 3))

(append '(1 2) '(3 4))

;; Or use concatenate

(concatenate 'list '(1 2) '(3 4))

;; Lists are a very central type, so there
;; is a wide cariaty of functionality for
;; them, afew examples:

(mapcar #'1+ '(1 2 3))
(mapcar #'+ '(1 2 3) '(10 20 30))
(remove-if-not #' evenp '(1 2 3 4))
(some #'oddp '(1 2 3 4))
(butlast '(subject verb object))

;;; Vectors
