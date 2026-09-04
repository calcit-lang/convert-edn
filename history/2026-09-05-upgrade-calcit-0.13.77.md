# Upgrade to Calcit 0.13.77

## English

- Migrated the last executable compact Snapshot to canonical `calcit.cirru` with the Calcit CLI. The legacy `:version nil` ambiguity was resolved from the repository package version (`0.0.7`) before formatting.
- Replaced the archived `calcit-test` module with a definition-attached test backed by the built-in `calcit.test` namespace.
- Pinned Calcit and JavaScript dependencies, moved the project to Yarn 4.12.0 with the Node modules linker, modernized the usage commands, and removed the retired duplicate `compact.cirru` after validating the migrated source inventory.
- Rebuilt CI with immutable action revisions, read-only permissions, strict Caps installation, Snapshot/type checks, tests, JavaScript code generation, and an end-to-end conversion run that rejects output fixture drift.

## 中文

- 使用 Calcit CLI 将最后有效的精简 Snapshot 迁移为规范的 `calcit.cirru`。格式化前依据仓库包版本（`0.0.7`）明确处理旧 `:version nil` 歧义。
- 用基于内置 `calcit.test` 的 definition-attached test 替换已归档的 `calcit-test` 模块。
- 固定 Calcit 与 JavaScript 依赖版本，迁移到使用 Node modules linker 的 Yarn 4.12.0，并更新使用命令；确认迁移后的源码清单完整后，删除退役且重复的 `compact.cirru`。
- 重建 CI：固定 Action commit、只读权限、严格 Caps 安装，并执行 Snapshot/类型检查、测试、JavaScript 生成及端到端转换；输出 fixture 发生漂移时会直接失败。
