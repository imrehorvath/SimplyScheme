(define (appearances item aggregate)
  (accumulate +
	      (every (lambda (arg) 1) 
		     (keep (lambda (i) (equal? i item)) aggregate))))