# EDN to Cirru EDN converter

使用配对的正式 Calcit / `@calcit/procs` **0.40.0** 将 `data/source.edn` 转换为 `data/target.cirru`。运行转换会覆盖目标文件，请先保留需要的旧输出。

当前源码同步升级 CLI 和运行时。转换继续使用 jsedn 0.4.1 和原来的输入输出路径。
从旧版本升级时请配对工具链并重新生成 JS。已有的 0.0.14 tag 请使用该 tag 声明的工具链。

## 使用

需要 Calcit 0.40.0、caps 0.1.1、Node.js 24 和 Yarn 4.18.0：

```bash
corepack yarn install --immutable
caps --ci --strict
caps verify --toolchain
yarn build
yarn start
```

默认入口为 JS/Node，不启动服务，也没有前端 COS/CDN 部署。生成的 `js-out/` 不进入 Git。
新依赖解析等待 60 分钟，无单包豁免。

jsedn 的解析与转换结果保留开放 JS 数据合同，不能假称它们只可能是 JsObject。
宿主边界检查 parse/toJS 为可调用成员；文件输入检查 String，结果经原 to-calcit-data 转换。
两个方法现在声明完整的接收者、参数与返回类型：`parse(String) → Dynamic`、
`toJS(Dynamic) → Dynamic`，不再使用省略参数和返回值的 bare Fn。
解析结果可能含任意嵌套 EDN 值，不能用有限 union 冒充完整数据合同。
FFI 注解不等于运行时验证全部返回数据；这里只收紧已核对的方法调用，
不增加强转或放宽门禁。四个原函数代码及全部附带测试、元数据保持不变。

本轮通过 all-defs、完整 strict、原附加测试和实际 Node 文件转换。
原算术测试不能单独证明转换语义；CI 同时比对已提交目标，并在临时目录通过原文件入口
验证嵌套 Map、List、空列表、布尔、nil 和 Unicode，不覆盖仓库输入或用户文件。
这些样例不代表支持全部 EDN 特性。

运行已有 Calcit 测试：

```bash
yarn test
```

## License

MIT
