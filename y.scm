((lambda (n)
   ((lambda (f) (f f n))
    (lambda (fact n)
      (if (= n 0)
	  1
	  (* n (fact fact (- n 1))) )) ))
 5)

((lambda (n)
   ((lambda (f) (f f n))
    (lambda (fib n)
      (if (< n 2)
	  1
	  (+ (fib fib (- n 2))
	     (fib fib (- n 1))) )) ))
 5)