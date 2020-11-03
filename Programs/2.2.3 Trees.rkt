(define my-list (list (list 1 2) (list 3 4)))
(define my-list2 (list 1 (list 2 (list 3 4) 5) (list 6 7)))

(define (count-leaves tree)
  (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else (+ (coutn-leaves (car x))
                 (count-leaves (cdr x))))))

(define (deep-reverse tree)
  (define (reverse-iter old new)
    (if (null? old)
        new
        (reverse-iter (cdr old) (cons (car old) new))))
  (define (deep-rev-iter cur-tree)
    (cond ((null?  cur-tree)
           (list))
          ((pair? (car cur-tree))
           (reverse-iter (cons
                          (deep-rev-iter (car cur-tree))
                          (deep-rev-iter (cdr cur-tree)))
                         (list)))
          (else
           (reverse-iter cur-tree (list)))))
  (deep-rev-iter tree))