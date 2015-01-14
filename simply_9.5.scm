(define (prepend-every wd sent)
  (every (lambda (x) (word wd x)) sent))