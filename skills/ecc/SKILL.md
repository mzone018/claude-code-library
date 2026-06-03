---
name: ecc
description: ECC (Everything Claude Code) — 跨平台 Agent 工程系统。63 agents + 249 skills + 79 commands，覆盖 TDD、Code Review、安全审查、API 设计、架构决策等全开发流程。Use when user needs agentic engineering workflows, multi-agent orchestration, or wants to browse ECC capabilities.
---

# ECC — Everything Claude Code

ECC 是一个跨平台 Agent 工程系统，位于 `~/ECC/`，提供 249 个 skill + 63 个 agent + 79 个命令。

**版本**: v2.0.0-rc.1 | **协议**: MIT | **安装路径**: `~/ECC/`

## 什么是 ECC

ECC 不是一个单一 skill，而是整个 Agent 工程方法论。它可以：
- **生成实现计划** — `/plan`
- **TDD 工作流** — `/tdd` (red-green-refactor)
- **部署验证** — `/e2e` 
- **代码审查** — `/code-review`
- **从 git 历史学习** — `/learn` / `/skill-create`

## 如何查找 ECC 能力

当用户提出问题或任务时，按以下方式在 ECC 中搜索匹配的 skill/agent：

1. **浏览 skills**: `ls ~/ECC/skills/` — 249 个专业领域 skill
2. **浏览 agents**: `ls ~/ECC/agents/` — 63 个专用子 agent
3. **浏览 commands**: `ls ~/ECC/commands/` — 79 个 slash 命令

### 常用映射

| 任务类型 | ECC Skill/Agent 示例 |
|---------|---------------------|
| React 开发 | `react-patterns`, `react-review`, `react-testing` |
| Python 审查 | `python-reviewer`, `python-build` |
| TDD | `/tdd` → `tdd-workflow` |
| 安全审计 | `security-audit`, `the-security-guide.md` |
| API 设计 | `api-design`, `api-connector-builder` |
| CI/CD | `ci-workflow`, `github-actions` |
| 文档 | `article-writing`, `readme` |
| Agent 架构 | `agent-architecture-audit`, `agentic-engineering` |

## 使用方式

**不要加载所有 249 个 skill**（会严重消耗上下文）。而是：
1. 根据任务关键词，在 `~/ECC/skills/` 中搜索匹配的 skill 名称
2. 用 Read 工具读取对应 `SKILL.md` 的内容
3. 将其中的方法论/模板应用到当前任务中

**ECC 项目本身有 CLAUDE.md**：`~/ECC/CLAUDE.md` 包含项目级指导。当在 `~/ECC` 内部工作时自动加载。

## 快速参考

- CLI 安装: `node ~/ECC/scripts/install-apply.js`
- 运行测试: `node ~/ECC/tests/run-all.js`
- 完整指南: `~/ECC/the-longform-guide.md`
- 安全指南: `~/ECC/the-security-guide.md`
