(define (sum-of-squares x y)
;; alredy described
  (+ (* x x) (* y y)))

(define (sum-square-two-larger x y z)
  (if (and (< x y) (< x z))
      ;; if x is smaller sum-of-squares of others
      (sum-of-squares y z)
      (if (and (< y x) (< y z))
          ;; if y is smaller sum-of-squares of others
          (sum-of-squares x z)
          ;; if z is smaller sum-of-squares of others
          (sum-of-squares x y)))
  )

(sum-square-two-larger 3 4 5)

(sum-square-two-larger 4 3 5)

(sum-square-two-larger 4 5 3)
