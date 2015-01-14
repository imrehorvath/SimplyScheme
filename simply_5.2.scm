(define (f1 x y)
  (se (bf x) (bl y)))

(define (f2 x y)
  (se (f1 x y) (word (first x) (last y))))

(define (f3 x y)
  (se x x))

(define (f4 x y)
  (word (second x) (second y)))
