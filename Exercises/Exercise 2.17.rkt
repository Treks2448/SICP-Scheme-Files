(define my-list (list 1 2 3 4 5))

(define (last-pair _list)
  (if (null? (cdr _list))
      _list
      (last-pair (cdr _list))))


(define (reverse-list _list)
  (define (reverse-iter old-list new-list)
    (if (null? old-list)
        new-list
        (reverse-iter (cdr old-list) (cons (car old-list) new-list))))
  (reverse-iter _list (list)))
      