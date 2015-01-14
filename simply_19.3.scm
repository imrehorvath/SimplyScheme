(define (three-arg-accumulate combiner identity-element stuff)
  (if (empty? stuff)
      identity-element
      (combiner (first stuff)
		(three-arg-accumulate combiner identity-element (bf stuff)))))
