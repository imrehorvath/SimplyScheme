(define (always-one arg)
  1)

(define (count-words sent)
  (accumulate + (every always-one sent)))

(define (um? wd)
  (equal? wd 'um))

(define (count-ums sent)
  (count-words (keep um? sent)))