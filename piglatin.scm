(define (pigl wd)
  (cond ((empty? wd) "")
	((vowel? (first wd)) (word wd 'ay))
	(else (pigl (word (bf wd) (first wd))))))

(define (vowel? letter)
  (member? letter '(a e i o u)))

(define (safe-pigl wd)
  (if (empty? (keep vowel? wd))
      (error "SAFE-PIGL -- Can't PIGL a word with no vowel " wd)
      (pigl wd)))
