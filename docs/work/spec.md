# 📋 GOAI 初赛提交 · 规格说明 (Specification)

> **文档 ID**：courseclip-goai-spec-v1
> **版本**：v1.0
> **适用**：Trae Work 模式 / 执行型 Agent / 自动化任务编排

---

## 🎯 背景与目标 (Background & Goal)

### 背景
我们为 **世界人工智能开源大赛 GOAI 2026 · 初赛 · 赛题四 AI+教育** 准备了作品：**课拍 CourseClip**，这是一个单 HTML 文件、零依赖的录课工作台（详见 `README.md`）。

**当前状态（Work 模式接管点）：**
```
✅ 主程序 CourseClip.html 已完成并通过浏览器功能测试
✅ README.md 中英文双语已生成（只缺 Demo 链接占位）
✅ LICENSE (MIT) / .gitignore / docs/DEPLOY.md / docs/SUBMISSION_CHECKLIST.md 已就绪
✅ 本地 Git 仓库已初始化：
   路径：f:\data\OneDrive - MSFT\桌面\培训\.git\
   分支：main
   首个 commit：8f304e5 ("chore: init GOAI 2026 preliminary submission - CourseClip v1.0")
   受控文件：6 个（未包含目录下其他 PPT/EXE/ZIP 等培训资料）
⏳ 未完成：推 GitHub → 部署 Demo → 填提交系统 → 正式提交
```

### 硬截止时间
```
📅 2026 年 8 月 16 日 18:00（建议不要晚于这个时间点，留出系统排队缓冲）
⏳ Work 启动时（8月14日）剩余：约 48 小时
```

### 必须交付的 3 件事
| # | 交付物 | 示例 |
|---|---|---|
| 1 | **公开代码仓库 URL** | `https://github.com/<OWNER>/goai-courseclip` |
| 2 | **可访问 Demo 链接（HTTPS）** | `https://goai-courseclip.vercel.app/CourseClip.html` |
| 3 | **GOAI 提交系统表单完成 + 成功凭证** | 提交成功截图 + 提交编号 |

### 可选加分交付
| # | 交付物 |
|---|---|
| 4 | 3~5 分钟演示视频 + 托管链接 |
| 5 | 仓库填写 Description、Topics、美化徽章 |
| 6 | 中英文双语项目介绍 PDF（可选） |

---

## 🧱 材料索引 (Asset Reference)

### 本地绝对路径（全部在 `f:\data\OneDrive - MSFT\桌面\培训\` 下）

| 相对路径 | 文件用途 | 关键内容 | 是否需要修改 |
|---|---|---|---|
| `CourseClip.html` | 主程序交付物 | 单 HTML 运行文件 | ❌ 不要修改（已测试通过） |
| `README.md` | 仓库首页展示 | 中英双语功能介绍 | ✅ 需要：填充 Demo 链接占位 `_______________________` |
| `LICENSE` | 开源协议 | MIT 协议 | ❌ |
| `.gitignore` | Git 忽略规则 | 忽略 PPT/EXE/ZIP 等无关文件 | ❌ |
| `docs/DEPLOY.md` | 部署操作手册 | 5 种部署方案详解 + 检查清单 | ❌ |
| `docs/SUBMISSION_CHECKLIST.md` | 人工提交指南 | 倒计时、文案模板、表单模板 | ❌ |
| `docs/work/spec.md` | 本文件 · 规格说明 | Agent 执行目标与边界 | ❌ |
| `docs/work/check_list.md` | 验收清单 | 6 大任务 30+ 验收项 | ✅ 每完成一项更新打勾 |
| `docs/work/tasks.md` | 执行任务拆解 | 可逐条 run 的子任务步骤 | ❌ |
| `docs/work/submission_payload.json` | 提交系统填单材料 | 结构化字段（中英简介/链接/元数据） | ✅ 需要：填入最终链接 |
| `docs/work/video_script.md` | 演示视频分镜脚本 | 分镜+台词+操作指引（可选） | ✅ 录制视频前确认 |
| `docs/work/submission_receipt.txt` | 提交成功凭证 | 保存提交编号/时间戳（最后一步生成） | ✅ 提交完成后创建 |

---

## ✅ 成功标准 (Success Criteria)

**Work 模式判定任务完成，必须同时满足以下 ALL 条件：**

### 必过条件（Fail Fast）
1. ✅ 能在**无痕窗口**打开 GitHub 仓库 URL，不登录即可看到 6 个文件
2. ✅ 能在**无痕窗口**打开 Demo URL，完整显示 CourseClip 主界面（无 404/403）
3. ✅ 点击 Demo 页面的「✨ AI 生成大纲」按钮能正常弹出窗口（证明 JS 执行无报错）
4. ✅ GOAI 提交系统有"提交成功"的视觉确认，且提交编号已保存到 `submission_receipt.txt`

### 质量条件（影响评分）
5. ✅ README.md 顶部 Demo 链接占位已替换为真实可点击的超链接
6. ✅ `submission_payload.json` 中所有字段都有非空有效值，与提交系统填的内容完全一致
7. ✅ 代码仓库有至少 1 次 commit（通常 2~3 次：初始 → 填链接 → 小修）
8. ✅ Git 历史 message 规范（feat/fix/chore/docs 前缀），无乱码、无中文路径报错
9. ✅ 若做了演示视频：时长 3-5 分钟、有画面有声音、能公开访问、覆盖 4 个核心模块
10. ✅ 仓库 Description + Topics 已填写（小加分）

### 不可接受（必须返工）
❌ 仓库是 Private 的（评委无法访问）
❌ Demo 是 HTTP 非 HTTPS（录制功能会被浏览器禁用）
❌ Demo 链接结尾没有 `/CourseClip.html`（显示 404 或目录索引）
❌ README 里保留了 `_______________________` 占位符，没有替换成真实链接
❌ CourseClip.html 被意外修改，本地测试功能异常
❌ 把无关的 PPT/EXE/ZIP 提交进了仓库（仓库超过 50MB 可能被拦截）

---

## 🔌 依赖与凭证 (Dependencies & Credentials)

### 软件依赖
| 依赖 | 最低版本 | 验证命令 |
|---|---|---|
| Git | 2.30+ | `git --version` |
| Chrome / Edge 浏览器 | 100+ | 无需命令，能打开 HTML 即可 |
| Python 3（可选，本地服务器） | 3.8+ | `python --version` |
| Node.js（可选，Vercel CLI） | 18+ | `node --version` |

### 账号凭证（必须由用户提供，Agent **严禁**自行注册）
| 凭证 | 获取方式 | 何时使用 |
|---|---|---|
| **GitHub 账号** | 用户提供用户名/密码或 Personal Access Token | T1 推送仓库 |
| **Vercel / Netlify 账号** | 建议用户用 GitHub OAuth 登录 | T2 部署 Demo |
| **GOAI 提交系统账号** | 用户提供登录方式 | T6 填表单提交 |

> ⚠️ **安全红线**：Work 模式 Agent 在遇到需要登录/输入密码/处理 CAPTCHA 的场景时，**必须调用 `browser_waiting_for_user_interaction` 将控制权交还给用户**，绝不能尝试猜测、伪造、或硬编码任何凭证。

---

## ⚡ 执行顺序约束 (Execution Order)

```
P 前置检查 (check_list.md P1~P6)
   ↓ 必须 100% 通过
T1 推 GitHub 仓库 (tasks.md Task 1)
   ↓ 验收 T1.1~T1.5 → check_list 打勾
T2 部署 Demo (Vercel 或 GitHub Pages 二选一)
   ↓ 验收 T2.A/B.1~T2.A/B.4 → 打勾
T3 回填 README 链接 + 再次 push
   ↓ 验收 T3.1~T3.4 → 打勾
T4 演示视频 (加分项，可跳过)
   ↓ 验收 T4.1~T4.5 → 打勾
T5 整理 submission_payload.json
   ↓ 验收 T5.1~T5.6 → 打勾
T6 GOAI 系统正式提交 (需要用户登录交互)
   ↓ 验收 T6.1~T6.5 → 打勾
   ↓
✅ 全部完成，交付 submission_receipt.txt
```

**严禁跳步**：T1 没过不能做 T2，T2 没过不能做 T3。失败要在当前任务内闭环，不能遗留到下一步。

---

## 🛑 任务边界与禁止事项 (Boundaries)

### 允许 Agent 做的
- 初始化 Git remote、push、pull 等 Git 操作（仅限现有 6 个文件范围内）
- 修改 README.md 中的链接占位符（仅限 `_______________________` 两处）
- 调用 Vercel CLI / Netlify CLI 部署（使用用户已登录会话）
- 操作浏览器自动化打开页面、验证、截图
- 生成 video_script.md、填写 submission_payload.json（按模板占位）
- 生成 submission_receipt.txt 保存提交凭证编号

### 禁止 Agent 做的（越界）
- ❌ **修改 CourseClip.html** 的任何代码（这是已通过测试的交付物）
- ❌ **git add 除了 6 个白名单文件之外的内容**（PPT/EXE/ZIP/CSV 严禁入库）
- ❌ **注册新账号**、伪造身份、擅自新建仓库
- ❌ **在公开仓库写入任何隐私信息**（姓名、手机号、邮箱、真实身份证等）
- ❌ **跳过用户登录流程**，遇到密码框必须交还给用户操作
- ❌ 修改 `spec.md`、`tasks.md`、`check_list.md` 自身的结构（用户明确要求的情况除外）

---

## 🧪 失败回滚策略 (Rollback)

| 失败场景 | 回滚步骤 |
|---|---|
| push 到 GitHub 失败（网络/权限） | 1. 检查 git remote URL 正确性  2. 重试 3 次  3. 切换 Gitee 仓库方案 |
| Vercel 部署连续失败 3 次 | 放弃 Vercel，切换 GitHub Pages 方案（DEPLOY.md 方案 B） |
| Pages 部署 10 分钟仍不生效 | 检查仓库 Pages 设置，再次触发 commit（如加一个空行到 README）  2. 如仍不生效，改 Netlify 拖拽方案 |
| README 修改后 push 成功但在线显示未更新 | 清除 CDN 缓存 / 等 5 分钟 / 无痕模式刷新  2. 确认 commit 在 main 分支顶端 |
| 提交系统最后一步报错 | 先截图保存错误信息  2. 检查所有必填字段  3. 立即联系赛事官方，**不要刷新页面丢失已填内容** |

---

## 📮 交付物汇总 (Deliverables)

```
交付物清单（Work 模式关闭前必须确认存在）：
├── 🌐 公开代码仓库 URL                (写在 submission_payload.json.repo_url)
├── 🌐 Demo 访问 URL (HTTPS)           (写在 submission_payload.json.demo_url)
├── 📄 docs/work/submission_payload.json  (所有字段已填完)
├── 📄 docs/work/submission_receipt.txt   (提交编号 + 时间戳)
├── 📄 docs/work/check_list.md            (验收项全部打勾)
└── 🎬 演示视频链接 (可选，加分项)
```

---

*文档版本：v1.0 · 最后更新：2026-08-14*
