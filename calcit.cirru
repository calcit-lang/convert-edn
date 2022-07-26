
{}
  :configs $ {} (:compact-output? true) (:extension |.cljs) (:init-fn |app.main/main!) (:local-ui? false) (:output |src) (:port 6001) (:reload-fn |app.main/reload!)
    :modules $ [] |calcit-test/
  :entries $ {}
  :ir $ {} (:package |app)
    :files $ {}
      |app.main $ {}
        :configs $ {} (:extension nil)
        :defs $ {}
          |convert-file! $ {} (:at 1629960579000) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629960580112) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629960579000) (:by |u0) (:text |convert-file!) (:type :leaf)
              |r $ {} (:at 1629960579000) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629960724255) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1629960741948) (:by |u0) (:text |fs/writeFileSync) (:type :leaf)
                  |L $ {} (:at 1629960741948) (:by |u0) (:text "|\"data/target.cirru") (:type :leaf)
                  |T $ {} (:at 1629960716538) (:by |u0) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1629960720998) (:by |u0) (:text |format-cirru-edn) (:type :leaf)
                      |T $ {} (:at 1629960711992) (:by |u0) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1629960716224) (:by |u0) (:text |to-calcit-data) (:type :leaf)
                          |T $ {} (:at 1629960684974) (:by |u0) (:type :expr)
                            :data $ {}
                              |5 $ {} (:at 1658819357591) (:by |u0) (:text |.!toJS) (:type :leaf)
                              |D $ {} (:at 1658819356108) (:by |u0) (:text |jsedn) (:type :leaf)
                              |T $ {} (:at 1629960599317) (:by |u0) (:type :expr)
                                :data $ {}
                                  |5 $ {} (:at 1658819312551) (:by |u0) (:text |.!parse) (:type :leaf)
                                  |D $ {} (:at 1658819310236) (:by |u0) (:text |jsedn) (:type :leaf)
                                  |T $ {} (:at 1629960581157) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629960585301) (:by |u0) (:text |fs/readFileSync) (:type :leaf)
                                      |j $ {} (:at 1629960592296) (:by |u0) (:text "|\"data/source.edn") (:type :leaf)
                                      |r $ {} (:at 1629960604031) (:by |u0) (:text "|\"utf8") (:type :leaf)
              |x $ {} (:at 1629960776737) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629960778636) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1629960780714) (:by |u0) (:text "|\"Finished") (:type :leaf)
          |main! $ {} (:at 1606310749711) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1606310749711) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1606310749711) (:by |u0) (:text |main!) (:type :leaf)
              |r $ {} (:at 1606310749711) (:by |u0) (:type :expr)
                :data $ {}
              |t $ {} (:at 1625340412805) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1625340412805) (:by |u0) (:text |echo) (:type :leaf)
                  |j $ {} (:at 1625340416431) (:by |u0) (:text "||Run app") (:type :leaf)
              |w $ {} (:at 1629960567602) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629960571101) (:by |u0) (:text |convert-file!) (:type :leaf)
          |on-error $ {} (:at 1606310757107) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1606310757107) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1606310757107) (:by |u0) (:text |on-error) (:type :leaf)
              |r $ {} (:at 1606310757107) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1606310780908) (:by |u0) (:text |message) (:type :leaf)
              |v $ {} (:at 1606311673317) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1606370713438) (:by |u0) (:text |;) (:type :leaf)
                  |T $ {} (:at 1606311684125) (:by |u0) (:text |draw-error-message) (:type :leaf)
                  |j $ {} (:at 1606311685136) (:by |u0) (:text |message) (:type :leaf)
          |reload! $ {} (:at 1606310753106) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1606310753106) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1606310753106) (:by |u0) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1606310753106) (:by |u0) (:type :expr)
                :data $ {}
              |t $ {} (:at 1629960577249) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629960577249) (:by |u0) (:text |convert-file!) (:type :leaf)
              |v $ {} (:at 1606310801441) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1606310803027) (:by |u0) (:text |echo) (:type :leaf)
                  |j $ {} (:at 1629960484172) (:by |u0) (:text "|\"Reloaded.") (:type :leaf)
        :ns $ {} (:at 1606310745262) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1606310745262) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1606310745262) (:by |u0) (:text |app.main) (:type :leaf)
            |r $ {} (:at 1625340359278) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1625340360591) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1625340360867) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1625340363084) (:by |u0) (:text |app.test) (:type :leaf)
                    |j $ {} (:at 1625340363810) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1625340366421) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1625340368206) (:by |u0) (:text |run-tests) (:type :leaf)
                |r $ {} (:at 1629960606977) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629960608414) (:by |u0) (:text "|\"fs") (:type :leaf)
                    |j $ {} (:at 1629960608940) (:by |u0) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1629960609301) (:by |u0) (:text |fs) (:type :leaf)
                |v $ {} (:at 1629960669969) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629960672111) (:by |u0) (:text "|\"jsedn") (:type :leaf)
                    |j $ {} (:at 1658819306416) (:by |u0) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629960676578) (:by |u0) (:text |jsedn) (:type :leaf)
        :proc $ {} (:at 1606310745262) (:by |u0) (:type :expr)
          :data $ {}
      |app.test $ {}
        :configs $ {}
        :defs $ {}
          |run-tests $ {} (:at 1625339970921) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1625339972421) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1625339970921) (:by |u0) (:text |run-tests) (:type :leaf)
              |r $ {} (:at 1625339970921) (:by |u0) (:type :expr)
                :data $ {}
              |t $ {} (:at 1625340033281) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1625340034982) (:by |u0) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1625340036265) (:by |u0) (:text |*quit-on-failure?) (:type :leaf)
                  |r $ {} (:at 1625340037959) (:by |u0) (:text |true) (:type :leaf)
              |v $ {} (:at 1625339973401) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1625339982550) (:by |u0) (:text |test-add) (:type :leaf)
          |test-add $ {} (:at 1625339983101) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1625339986557) (:by |u0) (:text |deftest) (:type :leaf)
              |j $ {} (:at 1625339983101) (:by |u0) (:text |test-add) (:type :leaf)
              |r $ {} (:at 1625340048519) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1625340049484) (:by |u0) (:text |testing) (:type :leaf)
                  |j $ {} (:at 1625340052314) (:by |u0) (:text ||add) (:type :leaf)
                  |r $ {} (:at 1625340054484) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1625340055860) (:by |u0) (:text |is) (:type :leaf)
                      |j $ {} (:at 1625340056137) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1625340056311) (:by |u0) (:text |=) (:type :leaf)
                          |j $ {} (:at 1625340057399) (:by |u0) (:text |2) (:type :leaf)
                          |r $ {} (:at 1625340057796) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1625340058161) (:by |u0) (:text |+) (:type :leaf)
                              |j $ {} (:at 1625340058562) (:by |u0) (:text |1) (:type :leaf)
                              |r $ {} (:at 1625340138662) (:by |u0) (:text |1) (:type :leaf)
        :ns $ {} (:at 1625339956346) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1625339956346) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1625339956346) (:by |u0) (:text |app.test) (:type :leaf)
            |r $ {} (:at 1625340009385) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1625340010270) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1625340010573) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1625340015655) (:by |u0) (:text |calcit-test.core) (:type :leaf)
                    |j $ {} (:at 1625340016422) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1625340016945) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1625340018567) (:by |u0) (:text |deftest) (:type :leaf)
                        |j $ {} (:at 1625340020648) (:by |u0) (:text |testing) (:type :leaf)
                        |r $ {} (:at 1625340021012) (:by |u0) (:text |is) (:type :leaf)
                        |v $ {} (:at 1625340040078) (:by |u0) (:text |*quit-on-failure?) (:type :leaf)
        :proc $ {} (:at 1625339956346) (:by |u0) (:type :expr)
          :data $ {}
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
