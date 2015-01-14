(define (keep pred aggregate)
  (if (sentence? aggregate)
      (accumulate se (every (lambda (wd)
			      (if (pred wd)
				  wd
				  '()))
			    aggregate))
      (accumulate word (every (lambda (letter)
				(if (pred letter)
				    letter
				    ""))
			      aggregate))))