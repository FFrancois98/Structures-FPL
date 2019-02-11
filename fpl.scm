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

(define (sum elemList)
  (cond
    ((null? elemList) 0) ;; empty list
    ((number? (car elemList))(+ (car elemList) (sum (cdr elemList))))
    ;; attempt at summing
    (else (sum (cdr elemList)))
  )  
)