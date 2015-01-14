(define (common-words first-sent second-sent)
  (filter (lambda (wd) (member? wd second-sent)) first-sent))