# claude-config

Claude Code 全局配置备份。崩溃后 `git clone` 即恢复核心行为规则。

## 内容

- `CLAUDE.md` — Agent 行为宪法（沟通/工程纪律/认知原则/备份策略）
- `PATROL.md` — 定期巡检系统规范
- `tips/` — 踩坑笔记（agentboard 架构/生命周期/备份策略）
- `settings.example.json` — 配置模板（真实 `settings.json` 含 API key，不进仓库）

## 恢复

```bash
git clone https://github.com/wampeeHuang/claude-config.git
cp claude-config/CLAUDE.md ~/.claude/CLAUDE.md
cp claude-config/PATROL.md ~/.claude/dashboard/PATROL.md
cp -r claude-config/tips ~/.claude/tips/
```
