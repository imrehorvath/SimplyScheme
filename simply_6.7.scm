(define (type-of thing)
  (cond ((boolean? thing) 'boolean)
	((number? thing) 'number)
	((word? thing) 'word)
	((sentence? thing) 'sentence)
	(else 'huh?)))