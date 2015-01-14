(define (sort2 sent)
  (if (> (first sent) (second sent))
      (se (second sent) (first sent))
      sent))
