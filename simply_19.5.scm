(define (true-for-all? pred sent)
  (if (empty? sent)
      #t
      (and (pred (first sent))
	   (true-for-all? pred (bf sent)))))
