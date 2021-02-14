;;;
;;; Parse infix arithmetic expressions.
;;;

;;; Parser

(define (parse expr)
  (parse-helper expr '() '()))

(define (parse-helper expr operands operators)
  (cond ((null? expr) (if (null? operators)
			  (car operands)
			  (handle-operator '() operands operators)))
	((number? (car expr)) (parse-helper (cdr expr)
					    (cons (make-node (car expr) '())
						  operands)
					    operators))
	((sub-expr? (car expr)) (parse-helper (cdr expr)
					      (cons (parse (car expr))
						    operands)
					      operators))
	((operator? (car expr)) (if (or (null? operators)
					(> (precedence (car expr))
					   (precedence (car operators))))
				    (parse-helper (cdr expr)
						  operands
						  (cons (car expr) operators))
				    (handle-operator expr operands operators)))
	(else (error "Unknown operator:" (car expr)))))

(define (handle-operator expr operands operators)
  (parse-helper expr
		(cons (make-node (car operators)
				 (list (cadr operands) (car operands)))
		      (cddr operands))
		(cdr operators)))

;;; Computer

(define (compute-tree tree)
  (if (number? (datum tree))
      (datum tree)
      ((oper-func (datum tree))
       (compute-tree (car (children tree)))
       (compute-tree (cadr (children tree))))))

;;; Abstraction

;; Parse Tree ADT

(define make-node cons)
(define datum car)
(define children cdr)

;; Expression abstraction

(define sub-expr? list?)

;; Operators abstraction

(define operators `((+ ,+ 1)
		    (- ,- 1)
		    (* ,* 2)
		    (/ ,/ 2)
		    (^ ,expt 3)))

(define (operator? token) (assq token operators))
(define (precedence operator) (caddr (assq operator operators)))
(define (oper-func operator) (cadr (assq operator operators)))
