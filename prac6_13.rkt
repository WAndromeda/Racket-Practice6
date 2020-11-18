#lang racket

(define getAtomaticElem 
  (case-lambda
    [
     (list_k num)
     (let (
           [lists 0]
           [list_k list_k]
           [num num]
           )
       ;(printf "~a\n" list_k)
       (cond [ (list? (list-ref list_k lists))
               (getAtomaticElem list_k num (+ lists 1))
               ]
             [else
              (cond [ (= num 1)
                      (list-ref list_k (+ (- num 1) lists))
                      ]
                    [else
                      ;(printf "ЗДЕСЬ\n")
                     (getAtomaticElem  (drop list_k 1) (- num 1))
                     ]
                    )
              ]
             )
       )
     ]
    [
     (list_k num lists)
     ;(printf "~a\n" list_k)
     (cond [ (list? (list-ref list_k lists))
             (getAtomaticElem list_k num (+ lists 1))
             ]
           [else
            (cond [ (= num 1)
                    (list-ref list_k (+ (- num 1) lists))
                    ]
                  [else
                   ;(printf "ЗДЕСЬ\n")
                   (getAtomaticElem (drop list_k (+ lists 1))  (- num 1))
                   ]
                  )
            ]
           )
       
     ]
    
    )
  )

(printf "НИКОЛАЕВ НИКИТА СЕРГЕЕВИЧ - ИКБО-13-17 - ПРАКТИКА 4 - ВАРИАНТ 13\n")
(printf "НОМЕРА СПИСКОВ НАЧИНАЮТСЯ С НАЧАЛА И С 1\n")
(define list_k (list (list 2) 2 'h 3 (list 3) "a" 4 5 'a (list 'e 'r) 'g))
(printf "\nИСХОДНЫЙ_СПИСОК: ~a\n\n" list_k)
(printf "Элемент: ~a\n\n" (getAtomaticElem list_k 3))
(printf "Элемент: ~a\n\n" (getAtomaticElem list_k 4))
