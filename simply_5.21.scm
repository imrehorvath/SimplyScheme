(define (query sent)
  (se (first (bf sent)) (first sent) (bl (bf (bf sent))) (word (last sent) '?)))
