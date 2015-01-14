(define (fourth x)
  (* x x x x))

(define (fourth x)
  (square (square x)))

(define (square x)
  (* x x))
