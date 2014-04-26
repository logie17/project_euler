(defn multiples_of_3_5 [cap]
  (loop [i 0 s 0]
    (if (= i cap) s
      (if (or (= 0 (mod i 3))
        (= 0 (mod i 5))) (recur (inc i) (+ s i))
        (recur (inc i) s)))))

(println (multiples_of_3_5 1000))
