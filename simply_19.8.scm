(define (true-for-all-pairs? pred sent)
  (not (true-for-any-pair? (lambda (a b) 
			     (not (pred a b))) 
			   sent)))
