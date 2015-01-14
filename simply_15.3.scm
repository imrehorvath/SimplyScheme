(define (prepend-every letter sent)
  (if (empty? sent)
      '()
      (se (word letter (first sent))
	  (prepend-every letter (bf sent)))))

(define (all-remaining wd)
  (all-remaining-helper (bf wd) 1 '()))

(define (all-remaining-helper wd till sent)
  (if (> till (count wd))
      sent
      (all-remaining-helper wd (+ till 1) (se sent (word-till wd till)))))

(define (word-till wd till)
  (if (= till 1)
      (first wd)
      (word (first wd)
	    (word-till (bf wd) (- till 1)))))

;; (substrings 'rat) => (r ra rat a at t "")
(define (substrings wd)
  (if (empty? wd)
      (se "")
      (se (first wd)
	  (prepend-every (first wd) (all-remaining wd))
	  (substrings (bf wd)))))