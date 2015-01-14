(define (my-repeated fn n)
  (cond ((= n 0) (lambda (x) x))
        (else (lambda (arg) ((my-repeated fn (- n 1)) (fn arg))))))
