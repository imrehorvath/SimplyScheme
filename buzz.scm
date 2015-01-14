(define (divisible? num d)
  (= (remainder num d) 0))

(define (buzz num)
  (if (or (divisible? num 7)
          (member? 7 num))
      'buzz
      num))
