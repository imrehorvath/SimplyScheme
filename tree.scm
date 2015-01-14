(define world-tree
  (make-node
   'world
   (list (make-node
	  'italy
	  (list (make-node 'venezia '())
		(make-node 'riomaggiore '())
		(make-node 'firenze '())
		(make-node 'roma '())))
	 (make-node
	  '(united states)
	  (list (make-node 'california
			   (list (make-node 'berkeley '())
				 (make-node '(san francisco) '())
				 (make-node 'gilory '())))
		(make-node 'massachusetts
			   (list (make-node 'cambridge '())
				 (make-node 'amherst '())
				 (make-node 'sudbury '()))))))))

(define (count-leaves tree)
  (if (leaf? tree)
      1
      (reduce + (map count-leaves (children tree)))))

(define (leaf? tree)
  (null? (children tree)))

(define (count-leaves tree)
  (if (leaf? tree)
      1
      (count-leaves-in-forest (children tree))))

(define (count-leaves-in-forest forest)
  (if (null? forest)
      0
      (+ (count-leaves (car forest))
	 (count-leaves-in-forest (cdr forest)))))

(define (in-tree? place tree)
  (or (equal? place (datum tree))
      (in-forest? place (children tree))))

(define (in-forest? place forest)
  (if (null? forest)
      #f
      (or (in-tree? place (car forest))
	  (in-forest? place (cdr forest)))))

(define (locate place tree)
  (if (equal? place (datum tree))
      (list place)
      (let ((subpath (locate-in-forest place (children tree))))
	(if subpath
	    (cons (datum tree) subpath)
	    #f))))

(define (locate-in-forest place forest)
  (if (null? forest)
      #f
      (or (locate place (car forest))
	  (locate-in-forest place (cdr forest)))))

