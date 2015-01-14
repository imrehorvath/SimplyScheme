;; Solution using HOF

(define (tree-map proc node)
  (make-node (proc (datum node))
             (map (lambda (nd) (tree-map proc nd)) (children node))))

;; Solution using recursion

(define (tree-map proc node)
  (make-node (proc (datum node))
             (forest-map proc (children node))))

(define (forest-map proc forest)
  (if (null? forest)
      '()
      (cons (tree-map proc (car forest))
            (forest-map proc (cdr forest)))))
