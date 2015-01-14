(define (exaggerate-word wd)
  (cond ((number? wd) (+ wd wd))
	((equal? wd 'good) 'great)
	((equal? wd 'bad) 'terrible)
	(else wd)))

(define (exaggerate sent)
  (every exaggerate-word sent))