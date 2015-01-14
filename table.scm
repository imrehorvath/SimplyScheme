(define (make-table) (list '*table*))

(define (get key table)
  (let ((record (assoc key (cdr table))))
    (if (not record)
	#f
	(cdr record))))

(define (put key value table)
  (let ((record (assoc key (cdr table))))
    (if (not record)
	(set-cdr! table
		  (cons (cons key value)
			(cdr table)))
	(set-cdr! record value)))
  'ok)