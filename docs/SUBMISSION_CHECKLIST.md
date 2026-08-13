# 🏁 GOAI 初赛提交清单 · 倒计时提醒

> **赛题四：AI + 教育** | Track 4: AI + Education
> **作品名称：** 课拍 CourseClip — 面向录课老师的零依赖一体化录课工作台

---

## ⏰ 倒计时卡片

| 项目 | 内容 |
|---|---|
| 🗓 **提交截止日期** | **2026 年 8 月 16 日（星期日）之前** |
| ⏱ **精确截止时间** | 建议 **8月16日 18:00 前** 提交（留出最后系统排队缓冲） |
| 📊 **当前日期** | 2026 年 8 月 14 日 |
| ⏳ **剩余时间** | **≈ 2 天（约 48 小时）** |
| 🔥 **紧迫等级** | 🟧 橙色——请尽快完成提交动作 |

### 建议任务分排

```
📅 8 月 14 日 今天  (剩余 48h)
  ✅ 18:00 前  完成代码仓库初始化、README 完善（本文件已生成 ✔）
  ✅ 20:00 前  本地跑一遍全功能录制一遍操作视频（如有需要）
  ✅ 22:00 前  推送到 GitHub，开启 GitHub Pages / Vercel 部署

📅 8 月 15 日 明天  (剩余 24h)
  ✅ 上午      验证 Demo 链接在外网环境可打开
  ✅ 中午      准备作品介绍文字（500字 / 英文翻译）
  ✅ 下午      录 Demo 视频（建议 3~5 分钟）
  ✅ 晚上      填写提交表单，上传所有附件

📅 8 月 16 日 截止日  (剩余 6h 缓冲)
  ✅ 12:00 前  提交
  ✅ 15:00 前  最后一次检查：仓库能拉下来 + Demo 能打开
  ✅ 18:00 前  收到提交成功确认邮件 / 截图留存
```

---

## ✅ 提交材料清单

对照下面清单，**做完一项打 ✓**，保证 100% 不缺材料！

### 1️⃣ 代码仓库（必填）

| # | 检查项 | 状态 |
|---|---|---|
| 1.1 | **GitHub / Gitee 仓库已创建**（公开 Public） | ☐ |
| 1.2 | 仓库根目录包含 `README.md`（中英文双语已生成 ✔） | ☑ |
| 1.3 | 仓库根目录包含 `CourseClip.html`（主程序 ✔） | ☑ |
| 1.4 | 仓库根目录包含 `LICENSE`（MIT 已生成 ✔） | ☑ |
| 1.5 | 仓库根目录包含 `.gitignore`（已生成 ✔） | ☑ |
| 1.6 | `docs/DEPLOY.md` 部署指南（已生成 ✔） | ☑ |
| 1.7 | **至少 1 次 commit**，message 清晰（建议 `chore: init GOAI preliminary v1.0`） | ☐ |
| 1.8 | 克隆下来后，`CourseClip.html` 双击可打开运行 | ☐ |
| 1.9 | **README 顶部徽章**已更新实际 Demo 链接 | ☐ |
| 1.10 | 仓库 Description 填写（可选加分）：例如 "课拍 CourseClip · GOAI 2026 Preliminary · AI+Education" | ☐ |
| 1.11 | 仓库 Topics 打上标签（可选加分）：`ai-education` `teacher-tool` `recorder` `courseclip` `goai2026` | ☐ |

### 2️⃣ Demo 链接（必填）

| # | 检查项 | 状态 |
|---|---|---|
| 2.1 | Demo 已部署到 GitHub Pages / Vercel / Netlify（任选一种） | ☐ |
| 2.2 | Demo 链接是 **HTTPS**（不是 HTTP，否则录制功能禁用） | ☐ |
| 2.3 | **无痕模式下**打开 Demo 链接能正常显示完整页面 | ☐ |
| 2.4 | 主界面的计时器、阶段列表、笔记模块全部可见 | ☐ |
| 2.5 | 点击「✨ AI 生成大纲」→ 输入内容 → 生成结果正常显示 | ☐ |
| 2.6 | 点击「▶ 开始」计时器开始倒计时 | ☐ |
| 2.7 | 输入笔记后按 Enter 发送，笔记出现在列表 | ☐ |
| 2.8 | 链接已粘贴到：`README.md` 顶部 / 仓库描述 / 提交表单 | ☐ |

### 3️⃣ 作品介绍（必填）

根据 GOAI 初赛要求，**通常需要填写作品介绍文案**，可直接用下面的模板，按需精简：

#### 📝 中文介绍（建议 300~500 字）

```
作品名称：课拍 CourseClip — 面向录课老师的零依赖一体化录课工作台

作品简介：
课拍 CourseClip 是一款纯前端单 HTML 文件的浏览器端工具，面向需要录制课程视频的老师群体。
它将传统录课场景中分散的"手机计时器 + 录音软件 + 课件窗口 + 笔记文档"四个独立工具，
整合到同一个 Apple 风格的工作台中。双击一个 HTML 文件即可使用，无需安装软件、
无需注册账号、不依赖任何后端服务，所有数据（录音、录像、笔记）全部保存在本地浏览器内存中。

核心功能：
① 课程节奏计时：一节课拆分为多个阶段独立倒计时，时间到弹窗+蜂鸣温和提醒，
   支持"+2分钟延时"或"进入下一阶段"，解决导入讲太久、前松后紧的节奏难题。
② 录音录像+课件对照：左边预览 PDF 课件或共享屏幕，右边看计时+笔记+录制控制，
   一个窗口完成所有操作，笔记自动标记当前阶段+剩余时间时间戳。
③ AI 生成课程大纲：输入课程主题、时长(7档)、受众(5级)、课型(5种)，
   本地算法按教育规律智能分配各环节时间，一键导入计时器，解决新老师"不会切时间"的痛点。

技术特色：单文件零依赖(无 node_modules/无后端)、浏览器原生 API (MediaRecorder /
getUserMedia / getDisplayMedia)、Web Audio 合成提示音(无音频文件)、Light/Dark 自动切换。

解决的教育痛点：新老教师录课节奏失控、课件录音分离课后难以复盘、
新手备课环节时间分配无参考。可惠及千万一线教师、网课讲师、教培行业。
```

#### 🌐 英文简介（如果系统需要）

```
Title: CourseClip - A Zero-dependency All-in-One Recording Workstation for Teachers

Abstract:
CourseClip is a pure-frontend single-HTML-file browser tool designed for educators who
record video lessons. It consolidates four traditionally scattered tools — smartphone timer,
recording software, slides viewer, and note-taking — into one elegant Apple-style workstation.
Users simply double-click the HTML file: no installation, no sign-up, no backend required.
All data (audio, video, notes) stays in local browser memory only.

Core Features:
(1) Stage-based pacing timer: break a lesson into timed stages with gentle alerts;
    extend +2min or jump to next stage; solves the "too-long intro, rushed ending" problem.
(2) Recording + courseware side-by-side: PDF/screen-share on the left, timer+notes+recording
    controls on the right, with auto-timestamped notes tagged by current stage.
(3) AI-powered lesson outline generator: input topic, duration, audience, lesson type,
    get a pedagogically-sound time-allocation template, one-click import into timer.

Tech: Single-file, zero-dependency, native MediaRecorder/getUserMedia APIs,
Web Audio synthesized alert tones, auto Light/Dark theme support.
```

### 4️⃣ 演示视频（建议，加分项）

| # | 检查项 | 状态 |
|---|---|---|
| 4.1 | 录制 3~5 分钟功能演示视频 | ☐ |
| 4.2 | 视频开场白：自我介绍 + 作品名称 + 赛题组别 | ☐ |
| 4.3 | 展示**计时功能**：开始/暂停/重置，阶段切换弹窗，黄/红颜色告警 | ☐ |
| 4.4 | 展示**AI 大纲生成**：输入课程 → 生成 → 一键导入 → 阶段列表变化 | ☐ |
| 4.5 | 展示**录音/录像**：点击录制 → 倒计时 → 停止 → 播放录制文件 | ☐ |
| 4.6 | 展示**笔记**：录制中记一条笔记，显示时间戳 | ☐ |
| 4.7 | 结尾总结：亮点回顾 + 未来扩展方向（如云端同步、真实大模型接入） | ☐ |

### 5️⃣ 赛题贴合度自检（加分自查）

对照"AI + 教育"赛道评审维度自查，确保材料中每一项都能被评委找到：

| 评审维度（参考） | 课拍 CourseClip 对应亮点 | 文档里哪里体现 |
|---|---|---|
| 🎯 **问题明确** | 解决录课节奏失控、课件录音分离、新手不会切时间 3 大痛点 | README 痛点表格 |
| 🤖 **AI 技术应用** | AI 大纲生成（课型×时长智能分配时间比例） | AI 生成大纲模块 |
| 👨‍🏫 **教育场景** | 直接服务一线教师录课，覆盖新授/复习/习题/实验/讲评 5 种典型课型 | AI 大纲 5 种课型模板 |
| ⚙️ **技术实现完整度** | 单文件、无依赖、全浏览器原生 API，可立即交付 | 技术说明表格 |
| 💡 **创新性** | 四合一整合工作台设计（计时+录制+课件+笔记）+ AI 辅助备课 | 创作灵感章节 |
| 🌍 **普惠性 / 可落地** | 零门槛、免费开源、离线可用，惠及广大经济欠发达地区教师 | 零依赖说明 + MIT 协议 |

---

## 🚀 快速操作步骤（复制粘贴即可）

### Step 1：初始化 Git 仓库
```bash
cd "f:\data\OneDrive - MSFT\桌面\培训"
git init
git add -A
git commit -m "chore: init GOAI 2026 preliminary submission - CourseClip v1.0"
git branch -M main
```

### Step 2：创建 GitHub 仓库 & 推送
```bash
# 网页端创建空仓库 https://github.com/new
# 假设叫 goai-courseclip，Public，不要勾选 README
git remote add origin https://github.com/你的用户名/goai-courseclip.git
git push -u origin main
```

### Step 3：开启 GitHub Pages
```
仓库 Settings → Pages → Branch: main / root → Save
等 1~2 分钟 → 得到 https://你的用户名.github.io/goai-courseclip/CourseClip.html
```

### Step 4：把链接贴回 README
打开 [README.md](../README.md)，搜索并替换：
- `_______________________` → 粘贴你刚得到的 Demo 链接

---

## 🔗 最终提交字段填写模板

把下表保存好，登录 GOAI 提交系统时对应粘贴：

| 提交系统字段 | 内容填写示例 |
|---|---|
| **作品名称** | 课拍 CourseClip — 面向录课老师的零依赖一体化录课工作台 |
| **参赛赛道** | 赛题四 · AI + 教育 |
| **作品简介** | 复制上面 3️⃣ 中的中文介绍文案 |
| **代码仓库地址** | `https://github.com/你的用户名/goai-courseclip` |
| **Demo / 体验链接** | `https://你的用户名.github.io/goai-courseclip/CourseClip.html`（或 Vercel / Netlify 链接）|
| **演示视频（如有）** | 上传到 B站/YouTube/网盘，贴链接 |
| **团队介绍** | 按需填写，突出教育背景/技术背景 |

---

## 💪 最后检查（提交前 30 分钟必做）

- [ ] 代码仓库链接在**未登录 GitHub 的浏览器**里能打开（Public 验证）
- [ ] Demo 链接在**手机浏览器 + 别人电脑**上都能打开
- [ ] 仓库 git clone 下来后，HTML 文件双击能打开
- [ ] README 中的两个 Demo 链接占位符都已替换成真实链接
- [ ] 提交表单所有必填项都填完
- [ ] 点击「提交」后，收到成功确认（**截图保存！**）
- [ ] 给你的 Demo 录一个 10 秒小视频备份（防止现场评委网络问题打不开）

---

<p align="center">
  <img src="https://img.shields.io/badge/⏳_Submit_before-8月16日_18:00-blue?style=for-the-badge" alt=""/>
  <br/><br/>
  <strong>GOOD LUCK · 预祝比赛顺利！🎯🎉</strong>
</p>

---

*文档版本：v1.0 · 生成时间：2026-08-14*
