
;; SECTION 1.1.6 - CONDITIONAL EXPRESSIONS AND PREDICATES

; The expressive power of the class of procedures that we have defined so far are very limited, because we have no way to perform "case analysis".
; For instance, we cannot make a procedure that computes the absolute value of a number by testing whether the number is negative, positive or if its zero.

; There is a special form in Lisp for notating such "case analysis", it is called 'cond' (which stands for conditional)
; Using the absolute value procedure we can make:

(define (abs x)
  (cond ((> x 0) x)
        ((< x 0) (-x))
        ((= x 0) 0)))

; General forms of conditional expressions are as follows:

(cond (⟨p1⟩ ⟨e1⟩)
      (⟨p2⟩ ⟨e2⟩)
      ...
      (⟨pn⟩ ⟨en⟩))

; Where each parenthesized pairs of expressions, (⟨p⟩ ⟨e⟩), are called "clauses".
; The first expression in each pair is a "predicate", an expression whose value is interpreted as either true or false.


; Another way to write the absolute value procedure is by:

(define (abs x)
  (cond ((< x 0) (-x))
        (else x)))

; 'else' is a special symbol that can be used in place of the ⟨p⟩ in the final clause of a 'cond'.


; Here is yet another way of writing the absolute value procedure:

(define (abs x)
  (if (< x 0)
      (- x)
      x))

; This procedure uses the special form 'if', a restricted type of conditional that can be used when there are precisely two cases in the case analysis.
; The general form of an 'if' expression is:

(if ⟨predicate⟩ ⟨consequent⟩ ⟨alternative⟩)

; To evaluate an 'if' expression, the interpreter will check the predicate and see if its is true. If it is true, then it will return the consequent.
; If the predicate turns out to be false, then the procedure will return the alternative.


; There are more predicates we could use in procedures:

(and⟨e1⟩ ... ⟨en⟩)
; Example:
(and (> x 5) (< x 10))

(or⟨e1⟩ ... ⟨en⟩)
; Example:
(define (>= x y) (or (> x y) (= x y)))

(not ⟨e⟩)
; Example:
(define (>= x y) (not (< x y)))






















