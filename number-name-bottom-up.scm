;; This is the bottom-up version. First we write the primitives, than we build up the
;; whole from these.

;; The number-name procedure.

(define (number-name num)
  (let ((number-groups (split-number-to-three-digit-groups num))
	(large-number-names '(thousand million billion trillion quadrillion
				       quintillion sextillion septillion octillion
				       nonillion decillion)))
    (number-name-helper number-groups large-number-names '())))

(define (number-name-helper number-groups large-number-names so-far)
  (cond ((empty? number-groups) so-far)
	((= (count number-groups) 1)
	 (number-name-helper (bf number-groups)
			     (bf large-number-names)
			     (se (three-digit-group-to-text (first number-groups))
				 so-far)))
	(else
	 (number-name-helper (bf number-groups)
			     (bf large-number-names)
			     (se (if (> (first (bf number-groups)) 0)
				     (first large-number-names)
				     '())
				 (three-digit-group-to-text (first number-groups))
				 so-far)))))

;;

;; Number splitting procedures (right to left).
;;
;; Example: (split-number-to-three-digit-groups 1234567) => (567 234 1)

(define (split-number-to-three-digit-groups num)
  (split-number-to-three-digit-groups-helper num '()))

(define (split-number-to-three-digit-groups-helper num so-far)
  (if (= num 0)
      so-far
      (split-number-to-three-digit-groups-helper (quotient num 1000)
						 (se so-far (remainder num 1000)))))

;;

;; Convert a three digit group into text.

(define (three-digit-group-to-text three-digit-group)
  (se (hundreds-to-text three-digit-group) (tens-and-ones-to-text three-digit-group)))

(define (hundreds-to-text three-digit-group)
  (if (< three-digit-group 100)
      '()
      (se (single-digit-to-text (quotient three-digit-group 100)) 'hundred)))

(define (tens-and-ones-to-text three-digit-group)
  (let ((tens-digit (remainder (quotient three-digit-group 10) 10))
	(ones-digit (remainder three-digit-group 10)))
    (cond ((and (= tens-digit 0) (= ones-digit 0)) '())
	  ((and (= tens-digit 0) (> ones-digit 0)) (single-digit-to-text ones-digit))
	  ((and (> tens-digit 0) (= ones-digit 0)) (tens-digit-to-text tens-digit))
	  ((and (= tens-digit 1) (= ones-digit 1)) 'eleven)
	  ((and (= tens-digit 1) (= ones-digit 2)) 'twelve)
	  ((and (= tens-digit 1) (= ones-digit 3)) 'thirteen)
	  ((and (= tens-digit 1) (= ones-digit 4)) 'fourteen)
	  ((and (= tens-digit 1) (= ones-digit 5)) 'fifteen)
	  ((and (= tens-digit 1) (= ones-digit 6)) 'sixteen)
	  ((and (= tens-digit 1) (= ones-digit 7)) 'seventeen)
	  ((and (= tens-digit 1) (= ones-digit 8)) 'eighteen)
	  ((and (= tens-digit 1) (= ones-digit 9)) 'nineteen)
	  (else (se (tens-digit-to-text tens-digit) (single-digit-to-text ones-digit))))))

(define (tens-digit-to-text tens-digit)
  (cond ((= tens-digit 1) 'ten)
	((= tens-digit 2) 'twenty)
	((= tens-digit 3) 'thirty)
	((= tens-digit 4) 'fourty)
	((= tens-digit 5) 'fifty)
	((= tens-digit 6) 'sixty)
	((= tens-digit 7) 'seventy)
	((= tens-digit 8) 'eighty)
	((= tens-digit 9) 'ninety)))

(define (single-digit-to-text digit)
  (cond ((= digit 0) '())
	((= digit 1) 'one)
	((= digit 2) 'two)
	((= digit 3) 'three)
	((= digit 4) 'four)
	((= digit 5) 'five)
	((= digit 6) 'six)
	((= digit 7) 'seven)
	((= digit 8) 'eight)
	((= digit 9) 'nine)))

;;