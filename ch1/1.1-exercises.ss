
;;;; Exercise 1.1
(+ 5 3 4)

(define a 1)
(define b (+ a 0))

(= a b)

(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= a 32) 6)
      ((= b 42) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))

#|
1.3 Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers
|#

(define (square num)
  (* num num))

(define (largest-squares x y z)
  (cond 
    ((and (>= x z) (>= y z) (+ (square x) (square y)))
     (and (>= y x) (>= z x) (+ (square z) (square y)))
     (and (>= z x) (>= x y) (+ (square z) (square x))))
  
(largest-squares 4 4 2)
  
  