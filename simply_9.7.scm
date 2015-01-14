(define (letterwords letter sent)
  (keep (lambda (wd) (member? letter wd)) sent))