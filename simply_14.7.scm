(define (differences sent)
  (cond ((empty? sent) '())
	((= (count sent) 1) '())
	(else (se (- (first (bf sent)) (first sent)) (differences (bf sent))))))