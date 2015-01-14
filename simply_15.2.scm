(define (palindrome? sent)
  (cond ((<= (count sent) 1) #t)
	((equal? (first-letter-of-sent sent) (last-letter-of-sent sent))
	 (palindrome? (sentence-without-last-letter
		       (sentence-without-first-letter sent))))
	(else #f)))

(define (first-letter-of-sent sent)
  (if (> (count (first sent)) 1)
      (first (first sent))
      (first sent)))

(define (last-letter-of-sent sent)
  (if (> (count (last sent)) 1)
      (last (last sent))
      (last sent)))

(define (sentence-without-first-letter sent)
  (if (> (count (first sent)) 1)
      (se (bf (first sent)) (bf sent))
      (bf sent)))

(define (sentence-without-last-letter sent)
  (if (> (count (last sent)) 1)
      (se (bl sent) (bl (last sent)))
      (bl sent)))
