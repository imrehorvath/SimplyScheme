(define (plural wd)
  (cond ((and (equal? (last wd) 'y)
	      (not (vowel? (last (bl wd))))) (word (bl wd) 'ies))
	((equal? (last wd) 'x) (word wd 'es))
	(else (word wd 's))))

(define (vowel? letter)
  (member? letter 'aeiou))
