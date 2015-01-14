(define (initials sent)
  (if (empty? sent)
      '()
      (se (first (first sent)) (initials (bf sent)))))