
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.main/main!) (:mode :native) (:reload-fn 'app.main/reload!)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {}
    'app.main $ %{} 'FileEntry
      :defs $ {}
        'convert-file! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn convert-file! ()
              fs/writeFileSync |data/target.cirru $ format-cirru-edn
                to-calcit-data $ .!toJS jsedn
                  .!parse jsedn $ fs/readFileSync |data/source.edn |utf8
              println |Finished
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! () (echo "|Run app") (convert-file!)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
          :tests $ []
            %{} 'TestEntry (:name |test-add)
              :code $ quote
                is= 2 $ + 1 1
              :tags $ #{} :unit
        'on-error $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-error (message) (; draw-error-message message)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'String
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () (convert-file!) (echo |Reloaded.)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.main $ :require (|fs :as fs) (|jsedn :default jsedn)
            calcit.test :refer $ is=
