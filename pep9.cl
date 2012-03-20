(defun p9 ()
  (tryAllDigits))

(defun tryAllDigits ()
  (loop for i from 1 to 1000 do
	(loop for j from 1 to 1000 do
	      (loop for k from 1 to 1000 do
		    (if (and (equalsOneThousandP i j k) (pythagoreanTripleP i j k)) ( i j k))))))
  

(defun pythagoreanTripleP (a b c)
  (if (eq (+ (* a a) (* b b)) (* c c)) t nil))

(defun equalsOneThousandP (a b c)
  (if (eq (+ a b c) 1000) t nil))

;;;function by quek on Github
(defun getList (from to)
  (loop for i from from to to collect i))

(defun filterIt ()
  (mapcar (lambda (x y z) (pythagoreanTripleP x y z)) (getList 1 1000) (getList 1 1000) (getList 1 1000)))

;use this
;(mapcar (lambda (x y) (evenp (+ x y))) '(1 2 3 4 5) '(1 2 3 4 5))
