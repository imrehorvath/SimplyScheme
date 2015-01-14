(define (progressive-squares? sent)
  (cond ((empty? sent) #t)
	((= (count sent) 1) #t)
	((not (= (square (first sent)) (first (bf sent)))) #f)
	(else (progressive-squares? (bf sent)))))

(define (square x) (* x x))