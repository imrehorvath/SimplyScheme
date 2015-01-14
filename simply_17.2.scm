(define (f1 lst1 lst2)
  (list (append (cdr lst1) (list (car lst2)))))

(define (f2 lst1 lst2)
  (list (cdr lst1) (cadr lst2)))

(define (f3 lst1 lst2)
  (append lst1 lst1))

(define (f4 lst1 lst2)
  (list (list (car lst1) (car lst2)) (append (cdr lst1) (cdr lst2))))


