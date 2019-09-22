;;;; Newton's square root programme

; avearege of two numbers
(define (average x y)
  (/ (+ x y) 2))

; x^2
(define (square x)
  (* x x))

; abs of x
(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

; main
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x) 
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; new-if (groking - still based on special form 'cond')
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 2) "equal" "not equal")
(new-if (= 42 2) "equal" "not equal")

; improved guessing! 

(define (sqrt-iter-better guess oldguess x)
  (if (good-enough-better? guess x oldguess)
      guess
      (sqrt-iter-better (improve guess x) guess x)))

(define (good-enough-better? guess x oldguess)
  (<= (abs (- guess oldguess))
     (* guess 0.00001)))

(define (sqrt-better x)
  (sqrt-iter-better 1.0 2.0 x))






