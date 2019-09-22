(+ 21 21)
(+ 21 21 21 21 )
(+ 321 21)

(+ (* 3 5) (- 10 6))

(define size 2)
(+ size 10)

(define radius 10)
(define pi 3.14159)

(define circumference (* 2 pi radius))

; defining  a "function"
(define (square x) 
  (* x x))

(square 100)

(square (square (square 3)))

(+ (square 10) (* -1 (square -10))) ; should be 0

(define (sum-of-squares x y )
  (+ (square x) (square y)))

(define (f a) 
  (sum-of-squares (+ a 1) (* a 2)))

(define (abs-simplistic x)
  (cond ((> x 0) x)
        ((= x 0) x)
        ((< x 0) (- x))))

(define (abs x)
  (cond ((< x 0 )(- x))
        (else x)))

(define (abs-better x)
  (if (< x 0)
      (- x)
      x))
  