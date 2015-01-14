(define (to-binary dec-digits)
  (if (= dec-digits 0)
      0
      (binary-helper dec-digits "")))

(define (binary-helper dec-digits bin-digits)
  (if (= dec-digits 0)
      bin-digits
      (binary-helper (quotient dec-digits 2) (word (remainder dec-digits 2) bin-digits))))