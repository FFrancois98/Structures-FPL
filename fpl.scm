(define (reverse-general L)
(cond ((null? L) '())
((list? L)
(append (reverse-general (cdr L))
(list (reverse-general (car L)))
)
)
(else L)
)
)

(define (sum-up-numbers-simple L)
  (cond
    ((null? L) 0) ;; empty list
    ((number? (car L))(+ (car L) (sum-up-numbers-simple (cdr L))))
    ;; attempt at summing
    (else (sum-up-numbers-simple (cdr L)))
  )  
)

(define (sum-up-numbers-general L)
  (cond
    ((null? L) 0) ;; empty list

    (else (sum-up-numbers-general (cdr L)))
  )
)