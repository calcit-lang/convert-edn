
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version nil)
    :modules $ [] |calcit-test/
  :entries $ {}
  :files $ {}
    |app.main $ {}
      :defs $ {}
        |convert-file! $ quote
          defn convert-file! ()
            fs/writeFileSync "\"data/target.cirru" $ format-cirru-edn
              to-calcit-data $ .!toJS jsedn
                .!parse jsedn $ fs/readFileSync "\"data/source.edn" "\"utf8"
            println "\"Finished"
        |main! $ quote
          defn main! () (echo "|Run app") (convert-file!)
        |on-error $ quote
          defn on-error (message) (; draw-error-message message)
        |reload! $ quote
          defn reload! () (convert-file!) (echo "\"Reloaded.")
      :ns $ quote
        ns app.main $ :require
          app.test :refer $ run-tests
          "\"fs" :as fs
          "\"jsedn" :default jsedn
    |app.test $ {}
      :defs $ {}
        |run-tests $ quote
          defn run-tests () (reset! *quit-on-failure? true) (test-add)
        |test-add $ quote
          deftest test-add $ testing |add
            is $ = 2 (+ 1 1)
      :ns $ quote
        ns app.test $ :require
          calcit-test.core :refer $ deftest testing is *quit-on-failure?
