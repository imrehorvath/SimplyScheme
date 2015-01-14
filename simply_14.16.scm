(define (syllables wd)
  (syllables-helper wd 0 #f))

(define (syllables-helper wd cnt last-was-vowel)
  (cond ((empty? wd) cnt)
	((vowel? (first wd))
	 (if last-was-vowel
	     (syllables-helper (bf wd) cnt #t)
	     (syllables-helper (bf wd) (+ cnt 1) #t)))
	(else (syllables-helper (bf wd) cnt #f))))

(define (vowel? letter)
  (member? letter '(a e i o u)))