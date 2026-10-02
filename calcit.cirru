
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :node)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {} $ 'app.main
    %{} 'FileEntry
      :defs $ {}
        'JsEdnHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait JsEdnHost
            .parse $ :: 'Fn $ {}
              :args $ [] 'app.main/JsEdnHost 'String
              :return 'JsObject
            .toJS $ :: 'Fn $ {}
              :args $ [] 'app.main/JsEdnHost 'JsObject
              :return 'JsObject
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'convert-file! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn convert-file! ()
            let
                edn-host $ unsafe-coerce jsedn 'app.main/JsEdnHost
                parsed $ .!parse edn-host $ fs/readFileSync |data/source.edn |utf8
                js-data $ .!toJS edn-host parsed
                content $ format-cirru-edn $ to-calcit-data js-data
              fs/writeFileSync |data/target.cirru content
            println |Finished
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (echo "|Run app") (convert-file!)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
          :tests $ [] $ %{} 'TestEntry (:name |test-add)
            :code $ quote $ is= 2 (+ 1 1)
            :tags $ #{} :unit
        'on-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-error (message) (; draw-error-message message)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'String
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (convert-file!) (echo |Reloaded.)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require (|fs :as fs) (|jsedn :default jsedn)
            calcit.test :refer $ is=
