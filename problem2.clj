(defn even_fib [p1, p2 cap]
  (def c (+ p1 p2))
  (def a
    (if (= 0 (mod c 2)) c
        (if (= 3 c) p2 0)))
  (if (<  (+ p1 p2) cap) (+ a (even_fib p2 c cap))
      a))
(println (even_fib 1 2 4000000))
