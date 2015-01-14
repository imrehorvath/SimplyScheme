(define (sign number)
  (cond ((< number 0) 'negative)
	((= number 0) 'zero)
	(else 'positive)))
