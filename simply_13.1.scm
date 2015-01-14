(define (explode wd)
  (if (empty? wd)
      '()
      (se (first wd) (explode (bf wd)))))