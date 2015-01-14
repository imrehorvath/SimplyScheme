(define (my_member? elem sent)
  (cond ((empty? sent) #f)
	((equal? (first sent) elem) #t)
	(else (my_member? elem (bf sent)))))