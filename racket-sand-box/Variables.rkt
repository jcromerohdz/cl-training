#lang racket

;####Variables###

(define some-var 5)
some-var

(define ⊆ subset?)
(⊆ (set 3 5) (set 1 3 4))

(let ([me "Bob"])
  "Alice"
  me)

(let* ([x 1]
       [y (+ x 1)])
       (* x y))


(letrec ([is-even? (lambda (n)
                     (or (zero? n)
                         (is-odd? (sub1 n))))]
         [is-odd? (lambda (n)
                    (and (not (zero? n))
                         (is-even? (sub1 n))))])
  (is-odd? 11))