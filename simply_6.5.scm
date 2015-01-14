(define (european-time sent)
  (cond ((equal? sent '(12 am)) 24)
	((equal? sent '(12 pm)) 12)
	((equal? (second sent) 'am) (first sent))
	(else (+ (first sent) 12))))

(define (american-time time)
  (cond ((= time 24) '(12 am))
	((= time 12) '(12 pm))
	((< time 12) (se time 'am))
	(else (se (- time 12) 'pm))))
