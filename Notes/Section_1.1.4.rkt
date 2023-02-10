
;; SECTION 1.1.4 - COMPOUND PROCEDURES 

; The general form of a procedure definition is:

(define (⟨name⟩ ⟨formal parameters⟩) 
⟨body⟩)

; Knowing this, we can create a procedure called “square”, where it squares 
; any number given

(define (square x) (* x x))  ; defining a procedure that squares any number 

(square 21)                  ; calling procedure with x value of "21" -> return 441 
(square (+ 2 3))             ; calling procedure with x value of "2 + 3" -> return 25
(square (square 3))          ; calling procedure with x value of "square 3" -> return 81

;; Using the "Square" function we can create a "Sum Of Squares" function:
;; Sum of squares: x^2 + y^2 

(define (SumOfSquares x y)
  (+ (square x) (square y)))

(SumOfSquares 2 3)        ; calling procedure with x and y values of 2 and 3 -> return 13

;; Using the Sum Of Squares function we can create another function named "f"
;; Now we can use Sum Of Squares function as a building block in constructing further procedures:

(define (f a)
  (SumOfSquares (+ a 1) (* a 2)))
(f 5)                        		; calling procedure with a value of "5" -> return 136