
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |calcit-test/
    :version nil
  :files $ {}
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          app.test :refer $ run-tests
          "\"fs" :as fs
          "\"jsedn" :as jsedn
      :defs $ {}
        |main! $ quote
          defn main! () (echo "|Run app") (convert-file!)
        |on-error $ quote
          defn on-error (message) (; draw-error-message message)
        |convert-file! $ quote
          defn convert-file! ()
            fs/writeFileSync "\"data/target.cirru" $ format-cirru-edn
              to-calcit-data $ jsedn/toJS
                jsedn/parse $ fs/readFileSync "\"data/source.edn" "\"utf8"
            println "\"Finished"
        |reload! $ quote
          defn reload! () (convert-file!) (echo "\"Reloaded.")
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
