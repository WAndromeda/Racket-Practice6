#lang racket

(define getElemRec
  (lambda (list_j num)
    (let (
          [list_j list_j]
          [start (- (length list_j) 1)]
          )
      (cond [ (= num 0)
              (last list_j)
              ]
            [else
             (getElemRec (take list_j start) (- num 1))
             ]
            )
      )
    )
  )


(printf "НИКОЛАЕВ НИКИТА СЕРГЕЕВИЧ - ИКБО-13-17 - ПРАКТИКА 4 - ВАРИАНТ 8\n")
(printf "НОМЕРА СПИСКОВ НАЧИНАЮТСЯ С КОНЦА И С 0\n")
(define list_k (list 1 2 3 4 'a 'b (list 'a 'b) 'c))
(printf "\nИСХОДНЫЙ_СПИСОК: ~a\n\n" list_k)
(printf "Элемент: ~a\n\n" (getElemRec list_k 1))
(printf "Элемент: ~a\n\n" (getElemRec list_k 6))