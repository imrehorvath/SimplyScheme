(define (aplize proc)
  (lambda (arg)
    (if (sentence? arg)
	(every proc arg)
	(proc arg))))