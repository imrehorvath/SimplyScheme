(define (gertrude wd)
  (let ((indef-article (if (vowel? (first wd)) 'an 'a)))
    (se indef-article wd 'is indef-article wd 'is indef-article wd)))
