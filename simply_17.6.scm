(define (append2 lst1 lst2)
  (if (null? lst1)
      lst2
      (cons (car lst1)
	    (append2 (cdr lst1) lst2))))

(define (append . lists)
  (if (null? lists)
      '()
      (append2 (car lists)
	       (apply append (cdr lists)))))

