(define (true-for-any-pair? pred sent)
  (cond ((empty? (bf sent)) #f)
	(else (or (pred (first sent) (second sent))
		  (true-for-any-pair? pred (bf sent))))))
