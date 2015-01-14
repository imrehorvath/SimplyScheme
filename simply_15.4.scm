(define (substring? sub wd)
  (substring-helper sub (substrings wd)))

(define (substring-helper sub subs)
  (cond ((empty? subs) #f)
	((equal? sub (first subs)) #t)
	(else (substring-helper sub (bf subs)))))