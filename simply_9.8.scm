(define (hang-letter letter guesses)
  (if (member? letter guesses)
      letter
      '_))

(define (hang secret-word letters-guessed-so-far)
  (accumulate word
	      (every (lambda (letter) (hang-letter letter letters-guessed-so-far))
		     secret-word)))