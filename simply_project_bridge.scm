(define (card-val card)
  (let ((rank (bf card)))
    (cond ((equal? rank 'a) 4)
	  ((equal? rank 'k) 3)
	  ((equal? rank 'q) 2)
	  ((equal? rank 'j) 1)
	  (else 0))))

(define (high-card-points hand)
  (accumulate + (every card-val hand)))

(define (count-words sent)
  (accumulate + (every (lambda (arg) 1) sent)))

(define (count-suit suit hand)
  (count-words (keep (lambda (card) (equal? (first card) suit)) hand)))

(define (suit-counts hand)
  (se (count-suit 's hand) (count-suit 'h hand) (count-suit 'c hand) (count-suit 'd hand)))

(define (suit-dist-points num)
  (cond ((= num 0) 3)
	((= num 1) 2)
	((= num 2) 1)
	(else 0)))

(define (hand-dist-points hand)
  (accumulate + (every suit-dist-points (suit-counts hand))))

(define (bridge-val hand)
  (+ (high-card-points hand) (hand-dist-points hand)))