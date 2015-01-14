(define (indef-article wd)
  (if (member? (first wd) 'aeiou)
      (se 'an wd)
      (se 'a wd)))
