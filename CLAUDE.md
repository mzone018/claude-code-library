# Claude Code Library - 公共配置

本项目是 Claude Code 的公共配置库，包含所有 skills、commands 和 MCP 配置。

## 使用方式

在任意项目中，Claude Code 会自动从 `~/.claude/skills` 和 `~/.claude/commands` 加载配置。
运行 `scripts/install.sh` 即可将软链指向本仓库。

## 核心规则

1. 收到任务时优先检查是否有匹配的 skill
2. 设计先于编码 — 使用 brainstorming skill
3. 测试先于实现 — 使用 TDD skill
4. 验证先于完成 — 使用 verification-before-completion skill

## 添加新 Skill

使用 `/writing-skills` 命令，或手动在 `skills/` 目录下创建新的 SKILL.md。
