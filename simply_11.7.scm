(define (copies n wd)
  (if (> n 0)
      (se wd (copies (- n 1) wd))
      '()))