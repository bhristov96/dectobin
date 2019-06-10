;;; Functions
(defun dectobin(val)
	(if (not(= val 0))
		(progn
		  	(setq var(floor val 2))
			(if (not(= var 0))
				(dectobin var))
			(format t "~d" (logand val 1)))
		(format t "~d" 0)))

(defun factorial(val)
  (if (or (= val 0) (= val 1))
	  (return-from factorial 1))
  (return-from factorial (* (factorial (- val 1)) val)))

;;; Main
(loop for x from 0 to 10 do
      (format t "~2d : ~d~%" x (factorial x)))

(loop for x from 0 to 10 do
	(format t "~2d : " x) 
	(dectobin x) 
	(terpri))
