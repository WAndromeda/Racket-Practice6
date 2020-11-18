#lang racket

(define sumSubLists
  (lambda (list_k num type sum)
    ;(printf "Список-t = ~a\n" list_k)
    ;(printf "Sum-t = ~a\n" sum)
    (cond [( = num (length list_k))
           (cond [(= type 1)
                  list_k
                  ]
                 [else
                  ;(printf "SUM\n\n")
                  sum
                  ]
                 )
           ]
          [else
           (cond [ (list? (list-ref list_k num))
                   ;(printf "LIST\n\n")
                   (define sum_t (sumSubLists (list-ref list_k num) 0 0 0))
                   (define list_t (list-set list_k num sum_t))
                   (sumSubLists list_t (+ num 1) type (+ sum sum_t))
                   ]
                 [else
                  ;(printf "NOT_LIST\n")
                  (cond [(number? (list-ref list_k num))
                         ;(printf "NUMBER = ~a\n\n" (list-ref list_k num))
                         (sumSubLists list_k (+ num 1) type (+ sum (list-ref list_k num)))
                         ]
                        [else
                         ;(printf "ELEM = ~a\n\n" (list-ref list_k num))
                         (sumSubLists list_k (+ num 1) type sum)
                         ]
                        )
                  ]

                 )
           ]
          )
    )
  )

(printf "НИКОЛАЕВ НИКИТА СЕРГЕЕВИЧ - ИКБО-13-17 - ПРАКТИКА 4 - ВАРИАНТ 17\n")
(define list_k (list (list 2 2 4 (list 1 'a (list 5 (list)) 2)) (list 3 4 (list 'a 'b)) 4 (list 1 'a) 5 'a (list 'e 'r) 'g))
(printf "\nИСХОДНЫЙ_СПИСОК: ~a\n\n" list_k)
(printf "\nСПИСОК_ИТОГ: ~a\n\n" (sumSubLists list_k 0 1 0))


