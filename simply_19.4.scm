(define (left-accumulate combiner stuff)
  (cond ((not (empty? stuff)) (real-left-accumulate combiner stuff))
	((member combiner (list + * word se append)) (combiner))
	(else (error "Can't accumulate empty input with that combiner"))))

(define (real-left-accumulate combiner stuff)
  (if (empty? (bf stuff))
      (first stuff)
      (combiner (real-left-accumulate combiner (butlast stuff)) (last stuff))))
