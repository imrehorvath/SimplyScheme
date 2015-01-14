(define (remdup sent)
  (if (empty? sent)
      '()
      (se (first sent) (remdup (filtered-sent (first sent) (bf sent))))))

(define (filtered-sent not-wanted-element sent)
  (cond ((empty? sent) '())
	((not (equal? (first sent) not-wanted-element))
	 (se (first sent) (filtered-sent not-wanted-element (bf sent))))
	(else
	 (filtered-sent not-wanted-element (bf sent)))))