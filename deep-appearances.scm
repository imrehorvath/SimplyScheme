(define (deep-appearances wd structure)
  (if (word? structure)
      (if (equal? wd structure) 1 0)
      (reduce +
	      (map (lambda (sublist)
		     (deep-appearances wd sublist))
		   structure))))

(define (deep-appearances wd structure)
  (cond ((equal? wd structure) 1)
	((word? structure) 0)
	((null? structure) 0)
	(else (+ (deep-appearances wd (car structure))
		 (deep-appearances wd (cdr structure))))))
