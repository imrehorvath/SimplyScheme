(define (pigl wd)
  (if (vowel? (first wd))
      (word wd 'ay)
      (pigl (word (bf wd) (first wd)))))

(define (vowel? letter)
  (member? letter '(a e i o u)))