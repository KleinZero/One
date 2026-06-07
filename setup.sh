#!/usr/bin/env bash
set -euo pipefail

echo "============================================"
echo "  001计划 (Plan 001) — 项目初始化"
echo "============================================"
echo ""

# 1. 复制 settings 模板
if [ ! -f ".claude/settings.local.json" ]; then
  if [ -f ".claude/settings.local.json.template" ]; then
    cp .claude/settings.local.json.template .claude/settings.local.json
    echo "[OK] 已创建 .claude/settings.local.json（从模板复制）"
    echo "     如需自定义权限，请编辑此文件。"
  else
    echo "[WARN] 未找到 .claude/settings.local.json.template"
  fi
else
  echo "[SKIP] .claude/settings.local.json 已存在"
fi

# 2. 检查前置条件
echo ""
echo "--- 检查前置条件 ---"

if command -v claude &> /dev/null; then
  echo "[OK] Claude Code 已安装"
else
  echo "[WARN] 未找到 claude 命令"
  echo "       请从 https://claude.ai/claude-code 安装"
fi

if command -v node &> /dev/null; then
  NODE_VERSION=$(node -v)
  echo "[OK] Node.js $NODE_VERSION"
else
  echo "[WARN] 未找到 Node.js（npx skills CLI 需要）"
fi

if command -v python3 &> /dev/null; then
  PYTHON_VERSION=$(python3 --version)
  echo "[OK] $PYTHON_VERSION"
elif command -v python &> /dev/null; then
  PYTHON_VERSION=$(python --version)
  echo "[OK] $PYTHON_VERSION"
else
  echo "[WARN] 未找到 Python（skill-creator 脚本需要）"
fi

# 3. 完成
echo ""
echo "============================================"
echo "  初始化完成！"
echo ""
echo "  可用技能："
echo "    - find-skills      （发现与安装技能）"
echo "    - skill-creator    （创建与优化技能）"
echo ""
echo "  运行 claude 即可开始。"
echo "============================================"
