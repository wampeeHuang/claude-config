# HANDOFF — 2026-06-23 caveman/claude-hud plugin 重装

## 问题
SessionStart 启动报错 `node:internal/modules/cjs/loader:1424`，原因为 `plugins/cache/caveman/` 和 `plugins/cache/claude-hud/` 目录缺失，但 `installed_plugins.json` 注册了已安装。

## 已做
1. **Clone 两个 plugin** 到 `plugins/cache/`：
   - `caveman/caveman/` ← `JuliusBrussee/caveman` (commit: 25d22f8)
   - `claude-hud/claude-hud/` ← `jarrodwatts/claude-hud` (commit: b83b445)
2. **重建 `installed_plugins.json`**（旧文件已删）
3. **移除 settings.json 中重复的 manual hooks**（SessionStart/UserPromptSubmit 的 caveman hook），plugin.json 自动提供
4. **设 `CAVEMAN_DEFAULT_MODE=ultra`**（75% 压缩强度）
5. **修复 statusLine glob**：`*/claude-hud/*/` → `*/claude-hud/`

## 待观察
- 重启后 SessionStart 报错应消失
- statusLine (claude-hud) 是否正常显示
- ultra 模式是否符合预期
