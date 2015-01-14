(define (remove-adjacent-duplicates sent)
  (cond ((empty? sent) '())
	((= (count sent) 1) (se sent))
	((equal? (first sent) (first (bf sent)))
	 (se (remove-adjacent-duplicates (bf sent))))
	(else
	 (se (first sent) (remove-adjacent-duplicates (bf sent))))))