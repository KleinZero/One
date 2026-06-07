# 001计划 (Plan 001)

这是一个基于 Claude Code 的 AI 辅助开发工作空间，预配置了两个核心技能。

## 项目技能

本项目在 `.claude/skills/` 中预置了两个技能，Claude Code 会自动加载：

- **find-skills**: 帮助发现和安装其他技能。当用户询问"有没有X技能"、"如何做X"时触发。
  - 使用 `npx skills` CLI 搜索和安装技能
  - 可用命令: `npx skills find <query>`, `npx skills add <package>`
  - 技能市场: https://skills.sh/

- **skill-creator**: 创建、改进和评估新技能。当用户想要创建技能、优化现有技能、运行评估时触发。
  - 完整的技能开发工作流：草稿 → 测试 → 评估 → 迭代
  - 包含自动化脚本：评估运行、基准测试聚合、描述优化
  - 详细文档见 `agents/`、`references/`、`eval-viewer/` 子目录

## 使用方式

1. 用 Claude Code 打开本项目：`claude`
2. 技能会自动加载，直接描述需求即可
3. 如需安装更多技能，说"帮我找一个 X 技能"

## 项目约定

- 所有通过 skill-creator 创建的技能会存放在 `*-workspace/` 目录中（已在 .gitignore 中排除）
- 如需为项目添加新技能，将其放入 `.claude/skills/<skill-name>/`
- 修改项目级权限配置，请编辑 `.claude/settings.local.json`（从 template 复制）
