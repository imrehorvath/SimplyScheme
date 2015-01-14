(define (odds sent)
  (cond ((empty? sent) '())
	((= (count sent) 1) (se sent))
	(else (se (first sent) (odds (bf (bf sent)))))))