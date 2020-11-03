;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 1.16|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (my-exp b n)
  (cond ((= b 0) 0)
        ((= n 0) 1)
        (else (exp-iter b b n))))

(define (square x)
  (* x x))

(define (my-even? n)
  (= (remainder n 2) 0))

(define (exp-iter total b n)
  (cond ((= n 1) total)
        ((my-even? n) (exp-iter (* b total) (square b) (/ n 2)))
        (else (exp-iter (* total b) b (- n 1)))))