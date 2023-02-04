;; HOMEWORK: Exercises 1.1 - 1.5

; Exercise 1.1

10                           ; will return 10
(+ 5 3 4)                    ; will return 12
(- 9 1)                      ; will return 8
(/ 6 2)                      ; will return 3
(+ (* 2 4) (- 4 6))          ; will return 6

(define a 3)                 ; a = 3
(define b (+ a 1))           ; b = 4
(+ a b (* a b))              ; will return 19
(= a b)                      ; will return 'false' (#f)

(if (and (> b a) (< b (* a b)))       ; check if b > a AND b < (a * b)
    b                                 ; will return 4
    a)

(cond ((= a 4) 6)                     ; check if a = 4 
      ((= b 4) (+ 6 7 a))             ; check if b = 4, then calculate (6 + 7 + a)
      (else 25))                      ; will return 16

(+ 2 (if (> b a) b a))                ; will return 6

(* (cond ((> a b) a)                  ; check if a > b, then return a
         ((< a b) b)                  ; check if a < b, then return b 
         (else -1))                   ; else return -1
   (+ a 1))                           ; will return 16


; Exercise 1.2

(/ (+ 5 4 (- 2 (- 3 (+ 6 4/5)))) (* 3 (- 6 2) (- 2 7)))

; Exercise 1.3

(define (square x) (* x x))

(define SumOfSquares(x y)
  (+ (square x) (square y)))

(define (SumOfLargest x y z)
  (cond ((and (<= x y) (<= x z)) (SumOfSquares(y z))
        ((and (<= y x) (<= y z)) (SumOfSquares(x z))
        (else (SumOfSquares(x y)))))))

; Exercise 1.4

(define (a-plus-abs-b a b)            
  ((if (> b 0) + -) a b))

;; This procedure basically takes in two parameters which are "a" and "b"
;; the 'if' statement checks to see if b > 0
;; if b > 0 is true, it will return +, otherwise -
;; assuming + is returned, it will then add a + b


; Exercise 1.5


  





































