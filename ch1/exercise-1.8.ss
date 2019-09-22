
; some boilerplates
(define (average x y) (/ (+ x y) 2))

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (abs x) (cond ((< x 0) (- x))(else x)))

(define (good-enough? guess x improvFunc)
  (< (abs (- (improvFunc guess x) guess))
     (abs (* guess 0.001))))

(define (root-iter guess x improvFunc)
  (if (good-enough? guess x improvFunc) guess
      (root-iter (improvFunc guess x) x improvFunc)))

(define (sqrt-improve guess x)
  (average guess (/ x guess)))

(define (cube-improve guess x)
  (/ (+ (* 2 guess) (/ x (square guess)))
     3))

; structure
; basically root-iter is the same function, it just applies
; different guess improvement mechanisms, varying by which 
; type of root i want to calculate.

; uses `sqrt-improve` from the prev exercise
(define (sqrt x)
  (root-iter 1.0 x sqrt-improve))

; uses `cube-improve`, diff formula (see exercise text)
(define (cubert x)
  (root-iter 1.0 x cube-improve))