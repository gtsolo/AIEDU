# 课拍 CourseClip · 录课工作台

> **Global Open-source AI Challenge (GOAI) 2026 · 初赛作品**
> 赛题四：AI + 教育 | Track 4: AI + Education

<p align="center">
  <img src="https://img.shields.io/badge/GOAI-初赛-0071e3?style=flat-square" alt="GOAI"/>
  <img src="https://img.shields.io/badge/License-MIT-green?style=flat-square" alt="License"/>
  <img src="https://img.shields.io/badge/Pure-HTML%2FCSS%2FJS-orange?style=flat-square" alt="Pure HTML/CSS/JS"/>
  <img src="https://img.shields.io/badge/Zero-Dependency-30d158?style=flat-square" alt="Zero Dependency"/>
  <img src="https://img.shields.io/badge/Offline-First-ff9f0a?style=flat-square" alt="Offline First"/>
</p>

<p align="center">
  <a href="#readme-cn">中文</a> |
  <a href="#readme-en">English</a>
</p>

> 🤖 **交给 Agent 自动完成提交？** 本项目已准备好 Trae Work 模式可直接执行的完整材料包：
> - 📋 规格说明 [docs/work/spec.md](docs/work/spec.md) · 目标/边界/验收标准
> - 📝 执行任务 [docs/work/tasks.md](docs/work/tasks.md) · T1~T6 逐个子步骤
> - ✅ 验收清单 [docs/work/check_list.md](docs/work/check_list.md) · 30+ 项逐项打勾
> - 📦 提交数据 [docs/work/submission_payload.json](docs/work/submission_payload.json) · 结构化字段待填 URL
>
> 在 Trae 中切换到 Work 模式，读取 `docs/work/spec.md` 作为 Spec，`docs/work/tasks.md` 作为 Tasks，`docs/work/check_list.md` 作为 CheckList，可一键启动自动化提交流程。

---

<a id="readme-cn"></a>

## 📖 项目简介（中文）

**课拍 CourseClip** 是一款面向录课老师的 **零依赖浏览器端录课工作台**。把分散的计时器、录音软件、课件窗口和笔记文档整合到一个页面里。下载一个 HTML 文件，双击就能用，不需要安装任何东西，不依赖任何服务器，**数据全部留在本地**。

### 🎯 面向人群

经常需要录制课程视频的老师——网课老师、做精品课录制的一线教师、教培机构讲师、自媒体知识 up 主。只要你有"录课"这个动作，这个工具就是为你准备的。

### 💡 创作灵感与真实痛点

灵感来源于帮一位老师录制公开课时的真实场景——她的导入环节讲得太投入，花了快 15 分钟，结果最核心的"案例拆解"只讲了一半，总结环节被压缩成 30 秒。录完她懊恼地说："我知道前面讲太久，但当时在状态里，根本顾不上看时间。"

四个被解决的真实痛点：

| # | 痛点 | 课拍的解决方案 |
|---|---|---|
| 1 | 导入讲太久，压缩核心内容 | 分阶段倒计时 + 到点温和提醒，不打断思路 |
| 2 | 录课前松后紧，节奏感差 | 进度条 + 黄/红变色预警，余光就能看到 |
| 3 | 课件和录音分离，回看无法同步 | 同一工作台内对照录制，笔记自动打时间戳 |
| 4 | 新老师不会分配环节时间 | **AI 大纲生成器**，输入主题一键出合理初版 |

### ✨ 三大核心功能

#### 1️⃣ 课程节奏计时

将一节课拆分为多个独立阶段（如"导入 5 分钟 → 新授 20 分钟 → 练习 10 分钟 → 总结 5 分钟"），每个阶段独立倒计时，到了时间自动弹窗+蜂鸣提醒切换。

- **智能色彩告警**：>30% 蓝色（正常），≤30% 黄色（警告），≤10% 红色（危险）
- **延时机制**：时间到可选「+2 分钟延时」或「进入下一阶段」
- **累计计时**：整节课已用时长、总进度一目了然

> 📸 [截图占位] 课程计时主界面——展示阶段列表、当前阶段高亮、56px 大号倒计时数字

#### 2️⃣ 录音 / 录像 + 课件对照

计时面板旁边集成录音和录像功能（调用浏览器原生 MediaRecorder API），同时支持上传 PDF 课件或共享屏幕。左边看课件，右边看计时和笔记，不用多窗口来回切。

- 录音 / 录像一键切换，录制文件列表支持**播放 / 下载（WebM）/ 删除**
- **PDF 课件嵌入预览**，无需外部阅读器
- **屏幕共享模式**，对照 PPT / 桌面直接录制
- 录制文件仅存在浏览器内存，可主动下载保存

> 📸 [截图占位] 录课工作台——左侧课件预览区、右侧计时+录音面板并排布局

#### 3️⃣ AI 生成课程大纲 + 课堂笔记

点一下「AI 生成大纲」，输入课程主题、时长、授课对象、课型，系统自动生成各阶段名称+时长+备注的课程大纲，**一键导入**计时器。录课中可随时记笔记，自动标记「当前阶段 + 剩余时间」时间戳。

- 支持 **7 种时长档位**（15/30/40/45/50/60/90 分钟）
- 支持 **5 种授课对象**（小学/初中/高中/大学/成人）
- 支持 **5 种课型模板**（新授课/复习课/习题课/实验课/讲评课），时间分配逻辑各不相同
- 笔记支持 Enter 快捷发送，按时间倒序排列

> 📸 [截图占位] AI 大纲生成器——输入课程信息、生成结果预览、一键导入的交互流程

### 🛠 技术说明

| 维度 | 选型 |
|---|---|
| 架构 | **单 HTML 文件**，CSS / JS 全部内联，零构建 |
| 运行环境 | 浏览器本地执行，**零后端依赖** |
| 录制 API | `navigator.mediaDevices.getUserMedia` + `MediaRecorder` |
| 屏幕共享 | `navigator.mediaDevices.getDisplayMedia` |
| 课件预览 | 浏览器原生 `<iframe>` 嵌入 PDF |
| 提示音 | Web Audio API 合成双音蜂鸣（无需音频文件） |
| UI 风格 | Apple Design Language，胶囊按钮、大圆角、柔和阴影 |
| 主题 | 自动跟随系统 Light / Dark 模式 (`prefers-color-scheme`) |
| 兼容 | 推荐 Chrome 90+ / Edge 90+（支持现代 Web API） |
| 数据隐私 | **全部数据仅存储在本地浏览器内存中**，不上传任何服务器 |

### 🚀 快速开始

#### 方式一：双击即用（推荐）
1. 下载本仓库中的 `CourseClip.html` 文件
2. 用 Chrome 或 Edge 浏览器直接双击打开
3. 开始录课 ✅

#### 方式二：本地静态服务器
```bash
# 方式 A：Python 3
python -m http.server 8080

# 方式 B：Node.js（需先 npm i -g serve）
serve .

# 然后访问 http://localhost:8080/CourseClip.html
```

> 💡 **为什么要用本地服务器？** MediaRecorder、屏幕共享、摄像头、麦克风等 Web API 在某些浏览器的 `file://` 协议下会被安全限制。如果要测试录制功能，建议使用方式二。

#### 方式三：在线 Demo
- Demo 链接（请自行部署后填写）：`_______________________`
- 本仓库 `CourseClip.html` 是自包含文件，可上传到任意静态托管（GitHub Pages / Vercel / Netlify / OSS）直接运行，详见 [DEPLOY.md](docs/DEPLOY.md)

### 📁 项目结构

```
.
├── CourseClip.html          # 主程序，唯一需要的文件（单文件应用）
├── LICENSE                  # MIT 开源协议
├── README.md                # 本文档
├── .gitignore               # Git 忽略规则
└── docs/
    ├── DEPLOY.md            # 部署指南（GitHub Pages / Vercel / Netlify）
    └── SUBMISSION_CHECKLIST.md  # GOAI 初赛提交清单 & 倒计时
```

### 🤝 参与贡献

Issue / PR Welcome！由于是单文件项目，修改时请确保 HTML / CSS / JS 全部保持内联。

### 📝 开源协议

[MIT License](LICENSE) © 2026 课拍 CourseClip Team

---

<a id="readme-en"></a>

## 📖 Project Overview (English)

**CourseClip** is a **zero-dependency, browser-integrated recording workstation** designed specifically for educators who record video lessons. It combines scattered tools — timers, recording software, courseware windows, and notes — into a single HTML page. Just download one file, double-click, and it works. No installation, no backend, **all data stays locally**.

### 🎯 Target Audience

Teachers and educators who regularly record lessons: online tutors, in-class public-course instructors, training lecturers, and educational content creators. If you "record" lessons, this tool is for you.

### 💡 Origin & Pain Points

Born from a real scenario: While helping a teacher record a demo lesson, her introduction section ran 15 minutes over, leaving the most important "case study" segment only half-done and the summary compressed to 30 seconds. Afterward she said, *"I knew I was taking too long, but in the moment I couldn't look up to check the time."*

Four real pain points solved:

| # | Pain Point | CourseClip Solution |
|---|---|---|
| 1 | Intro runs long, core content is cut | Stage-based countdown with gentle, non-disruptive alerts |
| 2 | Slow start → rushed ending, bad pacing | Visual progress bar + yellow/red color warnings at a glance |
| 3 | Slides and audio are separate, hard to review | Single-workstation layout + auto-timestamped notes |
| 4 | New teachers struggle with stage timing | **AI Outline Generator** → one-click reasonable template |

### ✨ Three Core Features

#### 1️⃣ Stage-based Pacing Timer

Break a lesson into independent stages (e.g., *"Intro 5 min → New Content 20 min → Practice 10 min → Summary 5 min"*). Each stage has its own countdown with auto pop-up + beep reminders.

- **Smart color alerts**: Blue when >30%, Yellow when ≤30%, Red when ≤10%
- **Flexible overtime**: Choose "+2 min extend" or "Next stage"
- **Total elapsed time**: Track whole-lesson progress

#### 2️⃣ Audio / Video Recording + Courseware Side-by-Side

Built-in recording via native `MediaRecorder` API, plus PDF upload or screen share. View slides on the left, timer + notes on the right — no window switching.

- Toggle Audio / Video recording; list supports **play / download (WebM) / delete**
- **Embedded PDF preview**, no external reader needed
- **Screen share mode** for PPT / desktop recording
- All recordings only in browser memory until explicitly downloaded

#### 3️⃣ AI-Powered Lesson Outline + In-Class Notes

Click "AI Generate Outline", enter topic / duration / audience / lesson type → get a complete stage breakdown with names, durations and teaching notes, then **one-click import** into the timer. Notes auto-tag current stage and remaining time.

- **7 duration presets** (15/30/40/45/50/60/90 min)
- **5 audience levels** (Primary / Middle / High / University / Adult)
- **5 lesson type templates** (New / Review / Exercise / Lab / Grading) each with unique time-allocation logic
- Notes support Enter-to-send, newest-first ordering

### 🛠 Technical Stack

| Aspect | Choice |
|---|---|
| Architecture | **Single HTML file**, all CSS/JS inline, zero build step |
| Runtime | Pure browser execution, **no backend required** |
| Recording API | `navigator.mediaDevices.getUserMedia` + `MediaRecorder` |
| Screen Share | `navigator.mediaDevices.getDisplayMedia` |
| PDF Preview | Native `<iframe>` embedding |
| Alert Tone | Web Audio API — synthesized two-tone beep (no audio file) |
| UI Style | Apple Design Language — pill buttons, large radii, soft shadows |
| Theme | Auto Light / Dark via system `prefers-color-scheme` |
| Compatibility | Chrome 90+ / Edge 90+ recommended |
| Privacy | **All data stays in local browser memory only**, never uploaded |

### 🚀 Quick Start

#### Option 1: Double-click and go (Recommended)
1. Download `CourseClip.html` from this repo
2. Open it with Chrome or Edge (double-click)
3. Start recording ✅

#### Option 2: Local static server (for recording APIs)
```bash
# Option A: Python 3
python -m http.server 8080

# Option B: Node.js
npx serve .

# Then open: http://localhost:8080/CourseClip.html
```

> 💡 Some browsers restrict MediaRecorder / camera / mic / screen-share under `file://`. Use a local server to test recording features.

#### Option 3: Online Demo
- Demo URL (fill in after deployment): `_______________________`
- `CourseClip.html` is fully self-contained — upload to any static host (GitHub Pages / Vercel / Netlify / OSS) and it runs directly. See [DEPLOY.md](docs/DEPLOY.md) for details.

### 📁 Project Structure

```
.
├── CourseClip.html          # Main app — the ONLY file you need (single-file delivery)
├── LICENSE                  # MIT License
├── README.md                # This document
├── .gitignore               # Git ignore rules
└── docs/
    ├── DEPLOY.md            # Deployment guide (GitHub Pages / Vercel / Netlify)
    └── SUBMISSION_CHECKLIST.md  # GOAI Submission checklist & countdown
```

### 🤝 Contributing

Issues & PRs are welcome! Since this is a single-file project, please keep all HTML / CSS / JS inline.

### 📝 License

[MIT License](LICENSE) © 2026 CourseClip Team

---

<p align="center">
  Made with ❤️ for teachers · 为录课老师精心打造
</p>
