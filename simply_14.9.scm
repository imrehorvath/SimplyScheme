(define (location wd sent)
  (location-helper wd sent 1))

(define (location-helper wd sent ind)
  (cond ((empty? sent) #f)
	((equal? wd (first sent)) ind)
	(else (location-helper wd (bf sent) (+ ind 1)))))