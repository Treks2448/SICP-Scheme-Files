;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Exercise 1.37|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (cont-frac-recur n d k i)
  (if (= i k)
      (/ (n k) (d k))
      (/ (n i) (+ (d i) (cont-frac-recur n d k (+ i 1))))))
(define (cont-frac n d k)
  (cont-frac-recur n d k 0))