# 001计划 (Plan 001)

一个预配置了 Claude Code 技能的 AI 辅助开发工作空间。

## 快速开始

### 前提条件

- [Claude Code](https://claude.ai/claude-code) 已安装
- Node.js >= 18（用于 `npx skills` CLI）
- Python >= 3.10（skill-creator 脚本需要）

### 启动

```bash
# 1. Clone 项目
git clone https://github.com/KleinZero/One.git 001计划
cd 001计划

# 2. 运行引导脚本（可选，设置本地配置）
bash setup.sh

# 3. 使用 Claude Code 打开
claude
```

首次打开后，Claude Code 会自动发现 `.claude/skills/` 中的技能，无需手动安装。

## 预置技能

| 技能 | 用途 | 触发场景 |
|------|------|---------|
| **find-skills** | 技能发现与安装 | "帮我找一个测试技能"、"有没有部署相关的技能？" |
| **skill-creator** | 技能创建与迭代 | "我想创建一个代码审查技能"、"优化这个技能的描述" |

## 目录结构

```
.
├── .claude/skills/           # Claude Code 项目级技能（自动加载）
│   ├── find-skills/          # 技能发现与安装
│   └── skill-creator/        # 技能创建、测试、评估、优化
├── CLAUDE.md                 # Claude 项目指令
├── setup.sh                  # 引导脚本
└── README.md                 # 本文件
```

## 自定义

1. **添加技能**：将技能目录放入 `.claude/skills/`，或使用 `find-skills` 技能安装
2. **权限配置**：编辑 `.claude/settings.local.json`
3. **项目指令**：编辑 `CLAUDE.md`

## 许可证

Apache License 2.0 — 参见 [LICENSE](LICENSE)

本项目包含来自 [Anthropic Skills](https://github.com/anthropics/skills) 的 skill-creator 技能，原始版权归 Anthropic, PBC 所有。
