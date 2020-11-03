 
 (define (append! x y) 
   (define (last-pair x) 
     (if (null? (cdr x)) 
         x 
         (last-pair (cdr x)))) 
   (set-cdr! (last-pair x) y) 
   x) 
  
 (define x (list 'a 'b)) 
 (define y (list 'c 'd)) 
 (define z (append x y)) 
 (define w (append! x y)) 