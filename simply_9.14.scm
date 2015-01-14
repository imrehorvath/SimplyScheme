(define (substitute with-this that sent)
  (every (lambda (wd)
	   (if (equal? wd that)
	       with-this
	       wd))
	 sent))