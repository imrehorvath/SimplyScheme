(define (base-grade grade)
  (cond ((equal? (first grade) 'a) 4.0)
	((equal? (first grade) 'b) 3.0)
	((equal? (first grade) 'c) 2.0)
	((eqaul? (first grade) 'd) 1.0)
	((equal? (first grade) 'f) 0.0)
	(else 'unknown-base-grade)))

(define (grade-modifier grade)
  (cond ((equal? (butfirst grade) '+) 0.33)
	((equal? (butfirst grade) "") 0)
	((equal? (butfirst grade) '-) -0.33)
	(else 'unknown-grade-modifier)))

(define (calculate-grade-point grade)
  (+ (base-grade grade) (grade-modifier grade)))

(define (gpa grades)
  (/ (accumulate + (every calculate-grade-point grades))
     (count grades)))