(define (true-for-all-pairs? pred sent)
  (cond ((empty? (bf sent)) #t)
	(else (and (pred (first sent) (second sent))
		   (true-for-all-pairs? pred (bf sent))))))
