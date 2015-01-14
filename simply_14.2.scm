(define (up wd)
  (reverse (up-helper wd)))

(define (up-helper wd)
  (if (= (count wd) 1)
      (se wd)
      (se wd (up-helper (bl wd)))))
