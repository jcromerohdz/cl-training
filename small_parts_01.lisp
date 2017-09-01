
;;Lists

'(16 25 36 49 64 81)

()

(+ 2 3 4)

(list 1 2 3)

(list (* 1 2) (* 3 4))

(list (list 1 3) (list 3 4))

;;Exercises
(list 1 (list 2 (list 3 4)))

(list (random 9) (random 9))

;;quote

(quote (+ 2 3))

'(+ 2 3)

(list '(* 1 2) (* 3 4))

(eval '(+ 2 3))

(list '(list 2 3) '(list 4 5))

;;Procedures or functions

(defun average (a b)
  (/ (+ a b)2))

(average 7 9)

(average (+ 2 3) (+ 4 5))

(defun dice ()
  (+ 1 (random 6)))

(dice)

;;Exercices
(defun square(b)
  (expt b 2))

(square 7)

(defun triangular(n)
  (/ (* n (+ n 1)) 2))

(triangular 10)


(defun two-dice ()
  (+ 1 (random 12)))

(two-dice)


;;Variables
(defparameter tipo-cambio 17.20)

(defun dollars-pesos (dollars)
  (* dollars tipo-cambio))

(dollars-pesos 100)

(defun average (n1 n2)
  (let* ((sum (+ n1 n2))
	 (result (/ sum 2)))
    result))

(average 10 10)

(defparameter miles-rate 0.621371192)

(defun km-miles(km)
  (* km miles-rate))

(defun miles-km(miles)
  (/ miles miles-rate))

(miles-km 50)

(defun average3 (n1 n2 n3)
  (let* ((sum (+ n1 n2 n3))
	 (result (/ sum 3)))
    result))

(km-miles 80)


(average3 3 4 5)

(defun cubesum (a b)
  (let* ((sum (+ a b))
	 (result (expt sum 3)))
    result))

(cubesum 3 4)

(defun pseudo-primes (x)
  (let* ((x2 (expt x 2))
	 (subs (- x2 x))
	 (result (+ subs 41)))
    result))

(pseudo-primes 40)
