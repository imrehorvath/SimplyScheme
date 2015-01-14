(define (celsius-to-farenheit c)
  (+ (* (/ 9 5) c) 32))

(define (farenheit-to-celsius f)
  (* (/ 5 9) (- f 32)))
