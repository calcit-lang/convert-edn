
# EDN to Cirru EDN converter

使用 Calcit 0.27.0 将 `data/source.edn` 转换为 `data/target.cirru`。运行转换会覆盖目标文件。

## 使用

需要 Calcit 0.27.0、caps 0.1.1、Node.js 24 和 Yarn 4.18.0：

```bash
corepack yarn install --immutable
caps --ci --strict
yarn build
yarn start
```

默认入口明确为 JS/Node，不启动服务，也没有前端 COS/CDN 部署。生成的 `js-out/` 不进入 Git。

运行已有 Calcit 测试：

```bash
yarn test
```

## License

MIT
