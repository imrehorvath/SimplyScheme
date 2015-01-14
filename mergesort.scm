(define (mergesort sent)
  (if (<= (count sent) 1)
      sent
      (merge (mergesort (one-half sent))
	     (mergesort (other-half sent)))))

(define (merge left right)
  (cond ((empty? left) right)
	((empty? right) left)
	((before? (first left) (first right))
	 (se (first left) (merge (bf left) right)))
	(else (se (first right) (merge left (bf right))))))

(define (one-half sent)
  (if (<= (count sent) 1)
      sent
      (se (first sent) (one-half (bf (bf sent))))))

(define (other-half sent)
  (if (<= (count sent) 1)
      '()
      (se (first (bf sent)) (other-half (bf (bf sent))))))