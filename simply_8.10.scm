(define (always-one arg)
  1)

(define (word-count sent)
  (accumulate + (every always-one sent)))

(define (true-for-all? pred sent)
  (= (word-count sent) (word-count (keep pred sent))))