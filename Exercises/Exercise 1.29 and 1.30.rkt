;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exersice 1.29 and 1.30|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define (simpsons-integral f a b n)
  0
  )

(define (cube x) (* x x x))

(define (inc n) (+ n 1))

(define (sum-cubes a b)
  (sum-recur cube a inc b))

(define (iter a result term next b) 
    (if (> a b)
        result
        (iter (next a) (+ result (term a)) term next b)))

(define (sum-iter term a next b)
  (iter a 0 term next b))

(define (sum-recur term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum-recur term (next a) next b))))