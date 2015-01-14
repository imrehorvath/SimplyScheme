(define (depth tree)
  (if (leaf? tree)
      1
      (+ 1 (max-depth-of-forest (children tree)))))

(define (leaf? tree)
  (empty? (children tree)))

(define (max-depth-of-forest forest)
  (max-depth-of-forest-helper forest 0))

(define (max-depth-of-forest-helper forest max-so-far)
  (if (empty? forest)
      max-so-far
      (let ((depth-of-first-tree (depth (car forest))))
	(if (< max-so-far depth-of-first-tree)
	    (max-depth-of-forest-helper (cdr forest) depth-of-first-tree)
	    (max-depth-of-forest-helper (cdr forest) max-so-far)))))

