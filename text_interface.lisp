(print "foo")

(progn (print "This")
       (print "is")
       (print "a")
       (print "test"))

(progn (prin1 "This")
       (prin1 "is")
       (prin1 "a")
       (prin1 "test"))

(defun say-hello ()
  (print "Please type your name:")
  (let ((name (read)))
    (print "Nice to meet you, ")
    (print name)))

(defun add-five()
  (print "Please enter a number:")
  (let ((num (read)))
    (print "When I add five I get")
    (print (+ num 5))))


(print '3)
(print '3.4)
(print 'foo)
(print '"foo")
(print '#\a)

(princ '3)
(princ '3.4)
(princ 'foo)
(princ '"foo")
(print '#\a)

(progn (princ "This sentence will be interrupted")
       (princ #\newline)
       (princ "by an annoying newline character."))

(defun say-hello ()
  (princ "Please type your name:")
  (let ((name (read-line)))
    (princ "Nice to meet you, ")
    (princ name)))

;data mode homoiconicity
'(+ 1 2)

;code mode
(+ 1 2)

(defparameter *foo* '(+ 1 2))

(eval *foo*)

(defun game-repl ()
  (loop (print (eval (read)))))

(defun game-repl ()
  (let ((cmd (game-read)))
    (unless (eq (car cmd) 'quit)
      (game-print (game-eval cmd))
      (game-repl))))

(defun game-read ()
  (let ((cmd (read-from-string
	      (concatenate 'string "(" (read-line) ")"))))
    (flet ((quote-it (x)
	     (list 'quote x)))
      (cons (car cmd) (mapcar #'quote-it (cdr cmd))))))

(defparameter *allowed-commands* '(look walk pickup inventory))

(defun geame-eval (sexp)
  (if (member (car sexp) *allowed-commands*)
      (eval sexp)
      '(i do not know that command.)))

(defun tweak-text (lst caps lit)
  (when lst
    (let ((item (car lst))
	  (rest (cdr lst)))
      (cond ((eq item #\space) (cons item (tweak-text rest caps lit)))
	    ((member item '(#\! #\? #\.)) (cons item (tweak-text rest t lit)))
	    ((eq item #\") (tweak-text rest caps (not lit)))
	    (lit (cons item (tweak-text rest nil lit)))
	    ((or caps lit) (cons (char-upcase item) (tweak-text rest nil lit)))
	    (t (cons (char-downcase item) (tweak-text rest nil nil)))))))

(defun game-print (lst)
  (princ (coerce (tweak-text (coerce (string-trim "() "
						  (prin1-to-string lst))
				     'list)
			     t
			     nil)
		 'string))
  (fresh-line))





  
