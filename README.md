# EDN to Cirru EDN converter

使用配对的正式 Calcit / `@calcit/procs` **0.34.0** 将 `data/source.edn` 转换为 `data/target.cirru`。运行转换会覆盖目标文件，请先保留需要的旧输出。

本轮只升级工具链配对，保留输入/输出路径、jsedn 0.4.1 和转换行为。
CLI 和 runtime 必须一起升级，已有 JS 应重新编译；0.0.12 为未发布候选，不发布 npm 包。

## 使用

需要 Calcit 0.34.0、caps 0.1.1、Node.js 24 和 Yarn 4.18.0：

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
这不是完整的 jsedn schema 或方法签名证明。0.34.0 对两个 bare Fn 的提示仍保留，
此次未扩大类型、增加强转或放宽门禁。5 个原定义及附带测试、元数据均未改动。

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
