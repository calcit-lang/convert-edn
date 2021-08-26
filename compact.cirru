
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |calcit-test/
    :version nil
  :files $ {}
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          app.test :refer $ run-tests
      :defs $ {}
        |main! $ quote
          defn main! () $ if
            = "\"ci" $ get-env "\"mode"
            run-tests
            echo "|Run app"
        |reload! $ quote
          defn reload! () $ echo "\"Reloaded."
        |on-error $ quote
          defn on-error (message) (; draw-error-message message)
      :proc $ quote ()
      :configs $ {} (:extension nil)
    |app.test $ {}
      :ns $ quote
        ns app.test $ :require
          calcit-test.core :refer $ deftest testing is *quit-on-failure?
      :defs $ {}
        |run-tests $ quote
          defn run-tests () (reset! *quit-on-failure? true) (test-add)
        |test-add $ quote
          deftest test-add $ testing |add
            is $ = 2 (+ 1 1)
      :proc $ quote ()
      :configs $ {}
