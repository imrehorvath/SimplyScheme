(define (count aggregate)
  (if (empty? aggregate)
      0
      (+ 1 (count (bf aggregate)))))