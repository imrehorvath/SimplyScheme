(define (remove wd sent)
  (if (empty? sent)
      '()
      (if (equal? wd (first sent))
	  (se (remove wd (bf sent)))
	  (se (first sent) (remove wd (bf sent))))))