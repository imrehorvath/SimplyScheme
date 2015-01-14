(define (pigl wd)
  (pigl-helper wd wd))

(define (pigl-helper wd orig-wd)
  (if (vowel? (first wd))
      (word wd 'ay)
      (let ((new-wd (word (bf wd) (first wd))))
	(if (equal? new-wd orig-wd)
	    (word new-wd 'ay)
	    (pigl-helper new-wd orig-wd)))))

(define (vowel? letter)
  (member? letter '(a e i o u)))