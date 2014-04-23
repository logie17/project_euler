(defn multiples_of_3_5 [cap]
  (def sum 0)
  (loop [x 0]
    (when (< x cap)
      (if (= (mod x 3) 0) (inc sum))
      (if (= (mod x 5) 0) (inc sum))
      (recur (+ x 1))))
)

(multiples_of_3_5 1000)
