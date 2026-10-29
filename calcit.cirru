
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
          :code $ quote $ deftrait JsEdnHost (.parse 'Fn) (.toJS 'Fn)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :node)
          :schema $ quote Trait
        'convert-file! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn convert-file! ()
            let
                edn-host $ js-cast jsedn 'app.main/JsEdnHost
                source $ decode-map-as (fs/readFileSync |data/source.edn |utf8) 'String
                parsed $ .parse edn-host source
                js-data $ .toJS edn-host parsed
                content $ format-cirru-edn $ to-calcit-data js-data
              fs/writeFileSync |data/target.cirru content
            println |Finished
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (echo "|Run app") (convert-file!)
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
          :tests $ [] $ %{} 'TestEntry (:name |test-add)
            :code $ quote $ is= 2 (+ 1 1)
            :tags $ #{} :unit
        'on-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-error (message) (; draw-error-message message) &unit
          :examples $ []
          :schema $ quote $ Fn String (-> Unit)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (convert-file!) (echo |Reloaded.) &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require (|fs :as fs) (|jsedn :default jsedn)
            calcit.test :refer $ is=
