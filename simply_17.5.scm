(define (max2 a b)
  (if (> b a) b a))

(define (max num . numbers)
  (if (null? numbers)
      num
      (max2 num (apply max numbers))))

