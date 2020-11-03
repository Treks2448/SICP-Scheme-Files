(define (make-point x y) (cons x y))

(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (print-point p)
 (newline)
 (display "(")
 (display (x-point p))
 (display ",")
 (display (y-point p))
 (display ")"))

(define (make-segment point-a point-b)
  (cons point-a point-b))

(define (segment-midpoint segment)
  (let ((px ((/ (+ (cdr (cdr segment)) (car (cdr segment))) 2)))
        (py ((/ (+ (cdr (car segment)) (car (car segment))) 2))))
    ((make-point x y))))

(define (seg) (make-segment (make-point 1 0) (make-point 7 8)))

