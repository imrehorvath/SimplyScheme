(define (scientific coefficient exponent)
  (* coefficient (expt 10 exponent)))

(define (sci-coefficient sci)
  (cond ((< sci 1) (sci-coefficient (* sci 10)))
	((> sci 10) (sci-coefficient (/ sci 10)))
	(else sci)))

(define (log10 x)
  (/ (log x) (log 10)))

(define (sci-exponent sci)
  (log10 (/ sci (sci-coefficient sci))))

