(define (thismany number noun)
  (if (> number 1) (se number (word noun 's))
      (se number noun)))
