#lang racket
;; 1. Promitive Datatypes and Operators

;;; Numbers
9999999999999999
#b111
#o111
#x111
3.14
6.02e+23
1/2
1+2i

'(+ 1 2)

(+ 1 2)
(- 8 1)
(* 10 2)
(expt 2 3)
(quotient 2 3)
(remainder 5 2)
(/ 35 5)
(/ 1 3)
(exact->inexact 1/3)
(+ 1+2i 2-3i)

#t
#f
(not #t)
(and 0 #f (error "doesn't get heree"))
(or #f 0 (error "doesn't get here"))

#\A
#\λ
#\u0BB

(string-append "Hello " "world!")

(string-ref "Apple" 0)
(format "~a can be ~a" "Strings" "formatted")

(printf "I' Racket. Nice to meet you!\n")