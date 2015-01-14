(define (countdown n)
  (if (> n 0)
      (se n (countdown (- n 1)))
      (se 'blastoff!)))