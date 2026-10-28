
# EDN to Cirru EDN converter

使用配对的正式 Calcit / `@calcit/procs` **0.31.0** 将 `data/source.edn` 转换为 `data/target.cirru`。运行转换会覆盖目标文件，请先保留需要的旧输出。

本轮保留输入/输出路径、jsedn 版本及现有转换行为，不启动服务或部署。
CLI 和 runtime 必须一起升级；旧 alpha 生成的 JS 应重新编译，不混用缓存。
本次仅更新工具链配对，不改 Snapshot、转换合同或 jsedn 依赖，也不发布 npm 包。

## 使用

需要 Calcit 0.31.0、caps 0.1.1、Node.js 24 和 Yarn 4.18.0：

```bash
corepack yarn install --immutable
caps --ci --strict
yarn build
yarn start
```

默认入口明确为 JS/Node，不启动服务，也没有前端 COS/CDN 部署。生成的 `js-out/` 不进入 Git。
jsedn 仍固定为 0.4.1，解析和转换结果保持开放的 JS 数据，不能假称它们只可能是 JsObject。
宿主边界只检查 parse/toJS 为可调用成员；文件输入仍检查 String，结果经原 to-calcit-data 转换。
这不是完整的 jsedn 数据 schema 或方法签名证明。`println` 已返回 Unit，
因此移除其后冗余的 `&unit`，不改动文件操作及日志顺序。

上一轮 alpha.5 迁移已通过 all-defs、完整 strict 和原测试；Node 实际转换原样本的输出
与 0.30.0 一致，并在隔离目录验收嵌套 Map、List、布尔、nil 和 Unicode。
原附加测试仅检查算术，不是转换语义的充分证明；CI 仍实际执行转换并比对
已提交目标文件。无需新建质量基线、验证脚本或增加防御性强转。

配对版本的 CI 还会在临时目录运行同一个文件入口，检查嵌套 Map、List、
空列表、布尔、nil 和 Unicode 的实际输出，不覆盖仓库输入或用户文件。
这不等于支持全部 EDN 特性；jsedn 的既有解析范围和开放宿主边界仍然保留。

运行已有 Calcit 测试：

```bash
yarn test
```

## License

MIT
