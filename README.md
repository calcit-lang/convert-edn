
# EDN to Cirru EDN converter

使用 Calcit 0.30.0 将 `data/source.edn` 转换为 `data/target.cirru`。运行转换会覆盖目标文件。

## 使用

需要 Calcit 0.30.0、caps 0.1.1、Node.js 24 和 Yarn 4.18.0：

```bash
corepack yarn install --immutable
caps --ci --strict
yarn build
yarn start
```

默认入口明确为 JS/Node，不启动服务，也没有前端 COS/CDN 部署。生成的 `js-out/` 不进入 Git。
jsedn 仍固定为 0.4.1，解析和转换结果保持开放的 JS 数据，不能假称它们只可能是 JsObject。
宿主边界只检查 parse/toJS 为可调用成员；文件输入仍检查 String，结果经原 to-calcit-data 转换。
这不是完整的 jsedn 数据 schema 或方法签名证明。本轮验收不包含 Calcit 0.30.1。

运行已有 Calcit 测试：

```bash
yarn test
```

## License

MIT
