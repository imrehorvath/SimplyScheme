(define (from-binary bits)
  (if (empty? bits)
      0
      (+ (* (first bits) (expt 2 (count (bf bits))))
	 (from-binary (bf bits)))))

(define (from-binary bits)
  (if (empty? bits)
      0
      (+ (* (from-binary (butlast bits)) 2)
	 (last bits))))