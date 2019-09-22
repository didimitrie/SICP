;;;; In chapter code, following as we go along

; recursive (linear?)
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

; iterative
(define (factiorial-iterative n)
  (define (iter product count)
    (if (> count n)
        product
        (iter (* count product)
              (+ 1 count))))
  (iter 1 1))

;;;; Takaway: the shape of the process resulting from 
;;;; these two functions is different.

;;;; Recursive process vs recursive procedure.
;;;; ie: 
;;;; `iter` in fact-iter is a recursive procedure that 
;;;; generates a iterative process. 
;;;; vs. 
;;;; a recursive proceduer `factorial` generates a 
;;;; recursive process.

;;;; Tail-Recursion: execute an iterative process 
;;;; in constant space, even if the iterative process 
;;;; is described by a recursive procedure.

