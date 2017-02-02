(list :a 1 :b 2 :c 3)
(getf (list :a 1 :b 2 :c 3) :c)

(defun make-cd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))

(make-cd "Roses" "Christian" 8 t)

(defvar *db* nil)

(defun add-record (cd) (push cd *db*))

(add-record (make-cd "Rosed" "Kristen" 7 t))
(add-record (make-cd "Around" "Chepe" 11 t))
(add-record (make-cd "Ohh susana" "CriCri" 5 t))
(add-record (make-cd "lalalal" "Chris" 10 t))

(defun dump-db ()
  (format t "~{~{~a:~10t~a~%~}~%~}" *db*))

(defun prompt-read (prompt)
  (format *query-io* "~a: " prompt)
  (force-output *query-io*)
  (read-line *query-io*))

(defun prompt-for-cd ()
  (make-cd
   (prompt-read "Title")
   (prompt-read "Artist")
   (or (parse-integer (prompt-read "Rating") :junk-allowed t) 0)
   (y-or-n-p "Ripped [y/n]: ")))

(defun add-cds ()
  (loop (add-record (prompt-for-cd))
     (if (not (y-or-n-p "Another? [y/n]: ")) (return))))

(add-cds)
