(define (two-first wd1 wd2)
  (word (first wd1) (first wd2)))

(define (two-first-sent sent)
  (word (first (first sent)) (first (first (bf sent)))))
