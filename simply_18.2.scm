(define (make-node datum children)
  (list datum children))

(define (datum tree)
  (car tree))

(define (children tree)
  (cadr tree))

