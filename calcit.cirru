
{}
  :users $ {}
    |u0 $ {} (:name |chen) (:id |u0) (:nickname |chen) (:avatar nil) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
  :ir $ {} (:package |app)
    :files $ {}
      |app.main $ {}
        :ns $ {} (:type :expr) (:by |u0) (:at 1606310745262)
          :data $ {}
            |T $ {} (:type :leaf) (:by |u0) (:at 1606310745262) (:text |ns)
            |j $ {} (:type :leaf) (:by |u0) (:at 1606310745262) (:text |app.main)
            |r $ {} (:type :expr) (:by |u0) (:at 1625340359278)
              :data $ {}
                |T $ {} (:type :leaf) (:by |u0) (:at 1625340360591) (:text |:require)
                |j $ {} (:type :expr) (:by |u0) (:at 1625340360867)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |u0) (:at 1625340363084) (:text |app.test)
                    |j $ {} (:type :leaf) (:by |u0) (:at 1625340363810) (:text |:refer)
                    |r $ {} (:type :expr) (:by |u0) (:at 1625340366421)
                      :data $ {}
                        |T $ {} (:type :leaf) (:by |u0) (:at 1625340368206) (:text |run-tests)
        :defs $ {}
          |main! $ {} (:type :expr) (:by |u0) (:at 1606310749711)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1606310749711) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1606310749711) (:text |main!)
              |r $ {} (:type :expr) (:by |u0) (:at 1606310749711)
                :data $ {}
              |t $ {} (:type :expr) (:by |u0) (:at 1625340391049)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1625340394073) (:text |if)
                  |j $ {} (:type :expr) (:by |u0) (:at 1625340394798)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1625340394997) (:text |=)
                      |j $ {} (:type :leaf) (:by |u0) (:at 1625340399668) (:text "|\"ci")
                      |r $ {} (:type :expr) (:by |u0) (:at 1625340400294)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |u0) (:at 1625340402301) (:text |get-env)
                          |j $ {} (:type :leaf) (:by |u0) (:at 1625340404943) (:text "|\"mode")
                  |r $ {} (:type :expr) (:by |u0) (:at 1625340406714)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1625340407993) (:text |run-tests)
                  |v $ {} (:type :expr) (:by |u0) (:at 1625340412805)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1625340412805) (:text |echo)
                      |j $ {} (:type :leaf) (:by |u0) (:at 1625340416431) (:text "||Run app")
          |reload! $ {} (:type :expr) (:by |u0) (:at 1606310753106)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1606310753106) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1606310753106) (:text |reload!)
              |r $ {} (:type :expr) (:by |u0) (:at 1606310753106)
                :data $ {}
              |v $ {} (:type :expr) (:by |u0) (:at 1606310801441)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1606310803027) (:text |echo)
                  |j $ {} (:type :leaf) (:by |u0) (:at 1625293407488) (:text "|\"Reloaded.")
          |on-error $ {} (:type :expr) (:by |u0) (:at 1606310757107)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1606310757107) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1606310757107) (:text |on-error)
              |r $ {} (:type :expr) (:by |u0) (:at 1606310757107)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1606310780908) (:text |message)
              |v $ {} (:type :expr) (:by |u0) (:at 1606311673317)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1606311684125) (:text |draw-error-message)
                  |j $ {} (:type :leaf) (:by |u0) (:at 1606311685136) (:text |message)
                  |D $ {} (:type :leaf) (:by |u0) (:at 1606370713438) (:text |;)
        :proc $ {} (:type :expr) (:by |u0) (:at 1606310745262)
          :data $ {}
        :configs $ {} (:extension nil)
      |app.test $ {}
        :ns $ {} (:type :expr) (:by |u0) (:at 1625339956346)
          :data $ {}
            |T $ {} (:type :leaf) (:by |u0) (:at 1625339956346) (:text |ns)
            |j $ {} (:type :leaf) (:by |u0) (:at 1625339956346) (:text |app.test)
            |r $ {} (:type :expr) (:by |u0) (:at 1625340009385)
              :data $ {}
                |T $ {} (:type :leaf) (:by |u0) (:at 1625340010270) (:text |:require)
                |j $ {} (:type :expr) (:by |u0) (:at 1625340010573)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |u0) (:at 1625340015655) (:text |calcit-test.core)
                    |j $ {} (:type :leaf) (:by |u0) (:at 1625340016422) (:text |:refer)
                    |r $ {} (:type :expr) (:by |u0) (:at 1625340016945)
                      :data $ {}
                        |T $ {} (:type :leaf) (:by |u0) (:at 1625340018567) (:text |deftest)
                        |j $ {} (:type :leaf) (:by |u0) (:at 1625340020648) (:text |testing)
                        |r $ {} (:type :leaf) (:by |u0) (:at 1625340021012) (:text |is)
                        |v $ {} (:type :leaf) (:by |u0) (:at 1625340040078) (:text |*quit-on-failure?)
        :defs $ {}
          |run-tests $ {} (:type :expr) (:by |u0) (:at 1625339970921)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1625339972421) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1625339970921) (:text |run-tests)
              |r $ {} (:type :expr) (:by |u0) (:at 1625339970921)
                :data $ {}
              |v $ {} (:type :expr) (:by |u0) (:at 1625339973401)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1625339982550) (:text |test-add)
              |t $ {} (:type :expr) (:by |u0) (:at 1625340033281)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1625340034982) (:text |reset!)
                  |j $ {} (:type :leaf) (:by |u0) (:at 1625340036265) (:text |*quit-on-failure?)
                  |r $ {} (:type :leaf) (:by |u0) (:at 1625340037959) (:text |true)
          |test-add $ {} (:type :expr) (:by |u0) (:at 1625339983101)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1625339986557) (:text |deftest)
              |j $ {} (:type :leaf) (:by |u0) (:at 1625339983101) (:text |test-add)
              |r $ {} (:type :expr) (:by |u0) (:at 1625340048519)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1625340049484) (:text |testing)
                  |j $ {} (:type :leaf) (:by |u0) (:at 1625340052314) (:text ||add)
                  |r $ {} (:type :expr) (:by |u0) (:at 1625340054484)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1625340055860) (:text |is)
                      |j $ {} (:type :expr) (:by |u0) (:at 1625340056137)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |u0) (:at 1625340056311) (:text |=)
                          |j $ {} (:type :leaf) (:by |u0) (:at 1625340057399) (:text |2)
                          |r $ {} (:type :expr) (:by |u0) (:at 1625340057796)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |u0) (:at 1625340058161) (:text |+)
                              |j $ {} (:type :leaf) (:by |u0) (:at 1625340058562) (:text |1)
                              |r $ {} (:type :leaf) (:by |u0) (:at 1625340138662) (:text |1)
        :proc $ {} (:type :expr) (:by |u0) (:at 1625339956346)
          :data $ {}
        :configs $ {}
  :configs $ {} (:extension |.cljs) (:output |src) (:port 6001) (:local-ui? false) (:compact-output? true) (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |calcit-test/
