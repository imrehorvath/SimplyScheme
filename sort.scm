(define (sort-sent sent)
  (if (empty? sent)
      '()
      (se (earliest-word sent)
	  (sort-sent (remove-once (earliest-word sent) sent)))))

(define (earliest-word sent)
  (earliest-helper (first sent) (bf sent)))

(define (earliest-helper so-far rest)
  (cond ((empty? rest) so-far)
	((before? (first rest) so-far)
	 (earliest-helper (first rest) (bf rest)))
	(else (earliest-helper so-far (bf rest)))))

(define (remove-once wd sent)
  (cond ((empty? sent) '())
	((equal? (first sent) wd) (bf sent))
	(else (se (first sent) (remove-once wd (bf sent))))))