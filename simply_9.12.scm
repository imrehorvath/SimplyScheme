(define (first-last sent)
  (filter (lambda (wd)
	    (equal? (first wd)
		    (last wd)))
	  sent))