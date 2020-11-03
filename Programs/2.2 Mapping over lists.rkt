(define my-list (list 1 2 3 4 5))

(define (map-list proc items)
  (if (null? items)
      nil
      (cons (proc (car items))
            (map proc (cdr items)))))
