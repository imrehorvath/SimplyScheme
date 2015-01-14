(define (always-one arg)
  1)

(define (count-word wd)
  (accumulate + (every always-one wd)))

(define (subword wd start end)
  ((repeated bl (- (count-word wd) end))
   ((repeated bf (- start 1)) wd)))