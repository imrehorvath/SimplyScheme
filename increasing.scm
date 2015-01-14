(define (increasing? num . restnums)
  (cond ((null? restnums) #t)
        ((< num (car restnums)) (apply increasing? restnums))
        (else #f)))
