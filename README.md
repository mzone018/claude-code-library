# Claude Code Library

我的 Claude Code 公共配置库 — 存放所有 skills、commands、MCP 配置和 Git 模板，方便在任何项目中快速调用。

## 目录结构

```
claude-code-library/
├── skills/          # 自定义 Skills（20 个）
├── commands/        # 自定义斜杠命令
├── mcp/             # MCP 服务器配置
├── git/             # Git hooks 和 commit 模板
├── settings/        # 跨项目共享的 Claude Code 设置
└── scripts/         # 一键安装脚本
```

## 快速开始

```bash
# 1. 克隆仓库
git clone https://github.com/mzone018/claude-code-library.git ~/claude-code-library

# 2. 运行安装脚本（创建软链）
bash ~/claude-code-library/scripts/install.sh
```

## 包含内容

### Skills (20个)

| Skill | 用途 |
|-------|------|
| brainstorming | 创造性工作前的需求分析 |
| systematic-debugging | Bug 修复的系统化流程 |
| test-driven-development | TDD 测试驱动开发 |
| writing-plans | 编写实现计划 |
| executing-plans | 执行实现计划 |
| requesting-code-review | 请求代码审查 |
| receiving-code-review | 接收代码审查反馈 |
| chinese-code-review | 中文 Review 沟通参考 |
| chinese-commit-conventions | 中文 Commit 规范 |
| chinese-documentation | 中文文档排版 |
| chinese-git-workflow | 国内 Git 平台配置 |
| dispatching-parallel-agents | 并行 Agent 调度 |
| finishing-a-development-branch | 分支收尾 |
| mcp-builder | MCP 服务器构建 |
| subagent-driven-development | Subagent 驱动开发 |
| using-git-worktrees | Git Worktree 隔离 |
| using-superpowers | 技能发现与使用 |
| verification-before-completion | 完成前验证 |
| workflow-runner | YAML 工作流执行 |
| writing-skills | 创建/编辑 Skills |

### Commands

- **security-review**: 对当前分支的变更进行安全审查（来源: anthropics/claude-code-security-review）

## 自定义

1. 编辑对应文件后 `git push`
2. 其他机器 `git pull` 即可同步最新配置
3. 也可以在仓库的 `settings/` 目录中放入组织级规则
