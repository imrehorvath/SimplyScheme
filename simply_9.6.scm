(define (sentence-version f)
  (lambda (sent) (every f sent)))