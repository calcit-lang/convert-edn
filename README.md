
# EDN to Cirru EDN converter

使用配对的 Calcit / `@calcit/procs` 0.30.1-alpha.5 将 `data/source.edn` 转换为 `data/target.cirru`。运行转换会覆盖目标文件。

本轮保留输入/输出路径、jsedn 版本及现有转换行为，不启动服务或部署。
正式 0.30.1 release 尚无 CLI 资产，因此明确固定已完成发布的候选版本。

## 使用

需要 Calcit 0.30.1-alpha.5、caps 0.1.1、Node.js 24 和 Yarn 4.18.0：

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

0.30.1 候选已通过 all-defs、完整 strict 和原测试；Node 实际转换原样本的输出
与 0.30.0 一致，并在隔离目录验收嵌套 Map、List、布尔、nil 和 Unicode。
原附加测试仅检查算术，不是转换语义的充分证明；CI 仍实际执行转换并比对
已提交目标文件。无需新建质量基线、验证脚本或增加防御性强转。

运行已有 Calcit 测试：

```bash
yarn test
```

## License

MIT
