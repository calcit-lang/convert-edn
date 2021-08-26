
{}
  :configs $ {} (:reload-fn |app.main/reload!) (:port 6001) (:output |src) (:compact-output? true)
    :modules $ [] |calcit-test/
    :init-fn |app.main/main!
    :local-ui? false
    :extension |.cljs
  :ir $ {} (:package |app)
    :files $ {}
      |app.main $ {}
        :defs $ {}
          |main! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1606310749711) (:by |u0)
              |j $ {} (:text |main!) (:type :leaf) (:at 1606310749711) (:by |u0)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1606310749711
                :by |u0
              |t $ {}
                :data $ {}
                  |T $ {} (:text |echo) (:type :leaf) (:at 1625340412805) (:by |u0)
                  |j $ {} (:text "||Run app") (:type :leaf) (:at 1625340416431) (:by |u0)
                :type :expr
                :at 1625340412805
                :by |u0
              |w $ {}
                :data $ {}
                  |T $ {} (:text |convert-file!) (:type :leaf) (:at 1629960571101) (:by |u0)
                :type :expr
                :at 1629960567602
                :by |u0
            :type :expr
            :at 1606310749711
            :by |u0
          |on-error $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1606310757107) (:by |u0)
              |j $ {} (:text |on-error) (:type :leaf) (:at 1606310757107) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |message) (:type :leaf) (:at 1606310780908) (:by |u0)
                :type :expr
                :at 1606310757107
                :by |u0
              |v $ {}
                :data $ {}
                  |D $ {} (:text |;) (:type :leaf) (:at 1606370713438) (:by |u0)
                  |T $ {} (:text |draw-error-message) (:type :leaf) (:at 1606311684125) (:by |u0)
                  |j $ {} (:text |message) (:type :leaf) (:at 1606311685136) (:by |u0)
                :type :expr
                :at 1606311673317
                :by |u0
            :type :expr
            :at 1606310757107
            :by |u0
          |convert-file! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1629960580112) (:by |u0)
              |j $ {} (:text |convert-file!) (:type :leaf) (:at 1629960579000) (:by |u0)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1629960579000
                :by |u0
              |v $ {}
                :data $ {}
                  |D $ {} (:text |fs/writeFileSync) (:type :leaf) (:at 1629960741948) (:by |u0)
                  |L $ {} (:type :leaf) (:by |u0) (:at 1629960741948) (:text "|\"data/target.cirru")
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |format-cirru-edn) (:type :leaf) (:at 1629960720998) (:by |u0)
                      |T $ {}
                        :data $ {}
                          |D $ {} (:text |to-calcit-data) (:type :leaf) (:at 1629960716224) (:by |u0)
                          |T $ {}
                            :data $ {}
                              |D $ {} (:text |jsedn/toJS) (:type :leaf) (:at 1629960688597) (:by |u0)
                              |T $ {}
                                :data $ {}
                                  |D $ {} (:text |jsedn/parse) (:type :leaf) (:at 1629960684478) (:by |u0)
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |fs/readFileSync) (:type :leaf) (:at 1629960585301) (:by |u0)
                                      |j $ {} (:text "|\"data/source.edn") (:type :leaf) (:at 1629960592296) (:by |u0)
                                      |r $ {} (:text "|\"utf8") (:type :leaf) (:at 1629960604031) (:by |u0)
                                    :type :expr
                                    :at 1629960581157
                                    :by |u0
                                :type :expr
                                :at 1629960599317
                                :by |u0
                            :type :expr
                            :at 1629960684974
                            :by |u0
                        :type :expr
                        :at 1629960711992
                        :by |u0
                    :type :expr
                    :at 1629960716538
                    :by |u0
                :type :expr
                :at 1629960724255
                :by |u0
              |x $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1629960778636) (:by |u0)
                  |j $ {} (:text "|\"Finished") (:type :leaf) (:at 1629960780714) (:by |u0)
                :type :expr
                :at 1629960776737
                :by |u0
            :type :expr
            :at 1629960579000
            :by |u0
          |reload! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1606310753106) (:by |u0)
              |j $ {} (:text |reload!) (:type :leaf) (:at 1606310753106) (:by |u0)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1606310753106
                :by |u0
              |t $ {}
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1629960577249) (:text |convert-file!)
                :type :expr
                :at 1629960577249
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |echo) (:type :leaf) (:at 1606310803027) (:by |u0)
                  |j $ {} (:text "|\"Reloaded.") (:type :leaf) (:at 1629960484172) (:by |u0)
                :type :expr
                :at 1606310801441
                :by |u0
            :type :expr
            :at 1606310753106
            :by |u0
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1606310745262
          :by |u0
        :configs $ {} (:extension nil)
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1606310745262) (:by |u0)
            |j $ {} (:text |app.main) (:type :leaf) (:at 1606310745262) (:by |u0)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1625340360591) (:by |u0)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |app.test) (:type :leaf) (:at 1625340363084) (:by |u0)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1625340363810) (:by |u0)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |run-tests) (:type :leaf) (:at 1625340368206) (:by |u0)
                      :type :expr
                      :at 1625340366421
                      :by |u0
                  :type :expr
                  :at 1625340360867
                  :by |u0
                |r $ {}
                  :data $ {}
                    |T $ {} (:text "|\"fs") (:type :leaf) (:at 1629960608414) (:by |u0)
                    |j $ {} (:text |:as) (:type :leaf) (:at 1629960608940) (:by |u0)
                    |r $ {} (:text |fs) (:type :leaf) (:at 1629960609301) (:by |u0)
                  :type :expr
                  :at 1629960606977
                  :by |u0
                |v $ {}
                  :data $ {}
                    |T $ {} (:text "|\"jsedn") (:type :leaf) (:at 1629960672111) (:by |u0)
                    |j $ {} (:text |:as) (:type :leaf) (:at 1629960672786) (:by |u0)
                    |r $ {} (:text |jsedn) (:type :leaf) (:at 1629960676578) (:by |u0)
                  :type :expr
                  :at 1629960669969
                  :by |u0
              :type :expr
              :at 1625340359278
              :by |u0
          :type :expr
          :at 1606310745262
          :by |u0
      |app.test $ {}
        :defs $ {}
          |run-tests $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1625339972421) (:by |u0)
              |j $ {} (:text |run-tests) (:type :leaf) (:at 1625339970921) (:by |u0)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1625339970921
                :by |u0
              |t $ {}
                :data $ {}
                  |T $ {} (:text |reset!) (:type :leaf) (:at 1625340034982) (:by |u0)
                  |j $ {} (:text |*quit-on-failure?) (:type :leaf) (:at 1625340036265) (:by |u0)
                  |r $ {} (:text |true) (:type :leaf) (:at 1625340037959) (:by |u0)
                :type :expr
                :at 1625340033281
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |test-add) (:type :leaf) (:at 1625339982550) (:by |u0)
                :type :expr
                :at 1625339973401
                :by |u0
            :type :expr
            :at 1625339970921
            :by |u0
          |test-add $ {}
            :data $ {}
              |T $ {} (:text |deftest) (:type :leaf) (:at 1625339986557) (:by |u0)
              |j $ {} (:text |test-add) (:type :leaf) (:at 1625339983101) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |testing) (:type :leaf) (:at 1625340049484) (:by |u0)
                  |j $ {} (:text ||add) (:type :leaf) (:at 1625340052314) (:by |u0)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |is) (:type :leaf) (:at 1625340055860) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |=) (:type :leaf) (:at 1625340056311) (:by |u0)
                          |j $ {} (:text |2) (:type :leaf) (:at 1625340057399) (:by |u0)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |+) (:type :leaf) (:at 1625340058161) (:by |u0)
                              |j $ {} (:text |1) (:type :leaf) (:at 1625340058562) (:by |u0)
                              |r $ {} (:text |1) (:type :leaf) (:at 1625340138662) (:by |u0)
                            :type :expr
                            :at 1625340057796
                            :by |u0
                        :type :expr
                        :at 1625340056137
                        :by |u0
                    :type :expr
                    :at 1625340054484
                    :by |u0
                :type :expr
                :at 1625340048519
                :by |u0
            :type :expr
            :at 1625339983101
            :by |u0
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1625339956346
          :by |u0
        :configs $ {}
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1625339956346) (:by |u0)
            |j $ {} (:text |app.test) (:type :leaf) (:at 1625339956346) (:by |u0)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1625340010270) (:by |u0)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |calcit-test.core) (:type :leaf) (:at 1625340015655) (:by |u0)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1625340016422) (:by |u0)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |deftest) (:type :leaf) (:at 1625340018567) (:by |u0)
                        |j $ {} (:text |testing) (:type :leaf) (:at 1625340020648) (:by |u0)
                        |r $ {} (:text |is) (:type :leaf) (:at 1625340021012) (:by |u0)
                        |v $ {} (:text |*quit-on-failure?) (:type :leaf) (:at 1625340040078) (:by |u0)
                      :type :expr
                      :at 1625340016945
                      :by |u0
                  :type :expr
                  :at 1625340010573
                  :by |u0
              :type :expr
              :at 1625340009385
              :by |u0
          :type :expr
          :at 1625339956346
          :by |u0
  :users $ {}
    |u0 $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |u0) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
