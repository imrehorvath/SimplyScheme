(define (always-one arg)
  1)

(define (word-to-sentence-of-ones wd)
  (every always-one wd))

(define (letter-count sent)
  (accumulate + (every word-to-sentence-of-ones sent)))