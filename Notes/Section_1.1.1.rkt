
;; SECTION 1.1.1 - EXPRESSIONS 

; One easy way to get started with programming is to examine some typical interactions 
; with an interpreter for scheme. 

; One kind of primitive expression that you might type is a number. 
; If you were to type the number ‘486’ on the lisp interpreter, 
; you will be presented with:

486

; Expressions representing numbers may be combined with primitive procedures
; such as (+ , -, /, *) to form compound expressions

; Examples:

(+ 137 349)
486 

(- 1000 334)
666

(* 5 99)
495

(/ 10 5)
2 

; The convention of placing the operator to the le of the operands is known as prefix 
; notation

; An advantage of prefix notation is that it extends in a straight-forward way to
; allow combinations to be ‘nested’

; For example:

(+ (* 3 5) (- 10 6))
19

; In principle, there is no limit to the depth of such nesting and the complexity of such ; expressions

; For Example 

(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))

