#!/bin/bash
# Claude Code Library - 一键安装脚本
# 将 ~/.claude 的 skills 和 commands 软链指向本仓库

set -e

LIBRARY_DIR="$(cd "$(dirname "$0")/.." && pwd)"
CLAUDE_DIR="$HOME/.claude"

echo "=== Claude Code Library Installer ==="
echo "Library: $LIBRARY_DIR"
echo ""

# 创建 ~/.claude 目录（如果不存在）
mkdir -p "$CLAUDE_DIR"

# 备份现有配置
backup_dir="$CLAUDE_DIR/backups/$(date +%Y%m%d_%H%M%S)"
mkdir -p "$backup_dir"

# 安装 skills
if [ -e "$CLAUDE_DIR/skills" ] || [ -L "$CLAUDE_DIR/skills" ]; then
    echo "[1/2] 备份现有 skills → $backup_dir/skills"
    mv "$CLAUDE_DIR/skills" "$backup_dir/skills" 2>/dev/null || true
fi
echo "[1/2] 链接 skills..."
ln -sf "$LIBRARY_DIR/skills" "$CLAUDE_DIR/skills"

# 安装 commands
if [ -e "$CLAUDE_DIR/commands" ] || [ -L "$CLAUDE_DIR/commands" ]; then
    echo "[2/2] 备份现有 commands → $backup_dir/commands"
    mv "$CLAUDE_DIR/commands" "$backup_dir/commands" 2>/dev/null || true
fi
echo "[2/2] 链接 commands..."
ln -sf "$LIBRARY_DIR/commands" "$CLAUDE_DIR/commands"

echo ""
echo "✅ 安装完成！"
echo "   skills:   $CLAUDE_DIR/skills → $LIBRARY_DIR/skills"
echo "   commands: $CLAUDE_DIR/commands → $LIBRARY_DIR/commands"
echo ""
echo "备份已保存至: $backup_dir"
