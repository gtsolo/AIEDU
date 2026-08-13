# 🛠 GOAI 初赛提交 · 可执行任务清单 (Tasks)

> **文档作用**：Work 模式按顺序执行 T1~T6，每个任务严格按 Input → Steps → Output → Verify 流程操作。
> **依赖文档**：执行前请先阅读 [spec.md](./spec.md)（规格说明）和 [check_list.md](./check_list.md)（验收清单）

---

## 🎬 Phase 0 · 前置验证（必须先做）

### P0 · 启动前检查
**Input**：无
**Action**：
```bash
cd "f:\data\OneDrive - MSFT\桌面\培训"
git --version                                    # 应输出 2.30+
git status                                       # 应显示 "On branch main"，无错误
git log --oneline -1                             # 应显示 8f304e5 chore: init GOAI 2026 preliminary...
ls -1 CourseClip.html README.md LICENSE .gitignore docs/DEPLOY.md docs/SUBMISSION_CHECKLIST.md
# 上面这行应列出 6 个文件，无 "No such file or directory"
```
**Output**：终端输出记录
**Verify**：check_list.md P1~P6 全部打勾 → 通过后继续，否则停下来排查

---

## 🎯 Task 1 · 推送代码到 GitHub 公开仓库

**目标**：把本地 6 个文件的 main 分支推到 GitHub 新建的 Public 仓库
**验收项**：check_list.md T1.1~T1.5（5 项）

### Step 1.1：在 GitHub 创建空的 Public 仓库
**Action**：
1. 打开浏览器自动化导航到 `https://github.com/new`
2. 如果出现登录页 → **立即调用 browser_waiting_for_user_interaction 把控制权交给用户登录**
3. 填表单：
   - Repository name: **`goai-courseclip`**（严格这个命名，不要改）
   - Description: `课拍 CourseClip · GOAI 2026 Preliminary · AI + Education`
   - Public / Private: **Public**（必须选 Public！）
   - ⚠️ **取消勾选**：Add a README file / Add .gitignore / Choose a license
4. 点击 "Create repository"
5. 等待仓库页面加载完成后，**复制浏览器地址栏 URL**，记为 `REPO_URL`
   （应该类似：`https://github.com/<USERNAME>/goai-courseclip`）

**Output**：保存 `REPO_URL` 写入 `submission_payload.json: repo_url` 字段占位

### Step 1.2：配置本地 Git remote 并 push
**Action**：
```bash
cd "f:\data\OneDrive - MSFT\桌面\培训"

# 检查是否已有 remote（如果有先删掉避免冲突）
git remote -v
git remote remove origin 2>$null   # PowerShell 忽略错误写法

# 配置 remote
git remote add origin <粘贴 REPO_URL>.git
# 例：git remote add origin https://github.com/zhangsan/goai-courseclip.git

# 验证
git remote -v
# 应显示 origin fetch/push 指向刚才的仓库

# push
git push -u origin main
```

**注意**：
- 如果 push 要求输入 GitHub 凭证 → **不要硬编码**，调用 browser_waiting_for_user_interaction 让用户完成网页登录或生成 Personal Access Token
- 如果出现 LF/CRLF warning 可忽略

### Step 1.3：验证 remote 仓库内容
**Action**：
1. 无痕窗口打开 `REPO_URL`
2. 确认能看到 6 个文件：`.gitignore` `CourseClip.html` `LICENSE` `README.md` `docs/`
3. 点开 docs/ 能看到 `DEPLOY.md` 和 `SUBMISSION_CHECKLIST.md`
4. 点 "X commits" 能看到 commit `8f304e5`

**Output**：截图保存到 `docs/work/screenshots/T1_github_repo.png`（如能截图）
**Verify**：check_list.md T1.1~T1.5 → 5 项全通过，进入 T2

---

## 🎯 Task 2 · 部署 Demo（HTTPS 静态托管）

**目标**：生成一个任意人、任意设备可访问的 HTTPS 链接，打开后能看到完整的 CourseClip 主界面
**验收项**：check_list.md T2（4 项，A 或 B 二选一，建议选 A Vercel）

### 选项 A（推荐）：Vercel 部署

**Step 2.A.1：准备 Vercel 环境**
```bash
# 方案 A-1：CLI 部署
npm i -g vercel         # 如果没装
vercel --version        # 验证安装成功
```

**Step 2.A.2：部署**
```bash
cd "f:\data\OneDrive - MSFT\桌面\培训"
vercel --yes
# 首次运行如果要求登录 → 停止，调用 browser_waiting_for_user_interaction 让用户授权
```

执行完会返回类似：
```
✅ Production: https://goai-courseclip-xxxxx.vercel.app
```

把 `https://goai-courseclip-xxxxx.vercel.app/CourseClip.html` 记为 `DEMO_URL`

**Step 2.A.3：验证**
1. 无痕窗口打开 `DEMO_URL`
2. 应显示：课拍 CourseClip 完整界面，计时显示 00:00，左侧有 4 个阶段
3. 页面协议是 HTTPS，有锁图标
4. 点击「✨ AI 生成大纲」应弹窗（证明 JS 无报错）

---

### 选项 B（Vercel 失败时的备用）：GitHub Pages

**Step 2.B.1：在仓库设置中开启 Pages**
1. 浏览器打开 `REPO_URL/settings/pages`
2. Source → Deploy from a branch
3. Branch → `main` / `/(root)` → Save
4. 等 1~2 分钟，页面出现绿色提示 "Your site is live at ..."
5. 复制上面生成的 Pages Base URL（比如 `https://zhangsan.github.io/goai-courseclip/`）

**Step 2.B.2：拼接 Demo URL**
```
DEMO_URL = <Base URL> + CourseClip.html
例：https://zhangsan.github.io/goai-courseclip/CourseClip.html
```

**Step 2.B.3：验证（同 2.A.3）**

**重要**：如果 GitHub Pages 超过 10 分钟不生效 → 不等待，改走 **Netlify 拖拽方案**（详见 DEPLOY.md）

---

**Output**：`DEMO_URL` 写入 `submission_payload.json: demo_url`
**Verify**：check_list.md T2 → 4 项全通过

---

## 🎯 Task 3 · 回填 README 的占位链接并再次推送

**目标**：让在线 README 的"在线 Demo"位置直接显示真实可点击的超链接
**验收项**：check_list.md T3.1~T3.4（4 项）

### Step 3.1：读取文件并替换占位符
**注意**：只替换两处，不得修改 README 其他内容。

用 Read 读取 `README.md`，用 Edit 替换两处（中英文部分各一处）：
```
查找：`_______________________`
替换为：`<粘贴 DEMO_URL>`
```

应该有 2 处匹配：
1. 中文部分：`方式三：在线 Demo → Demo 链接（请自行部署后填写）：` 后面
2. 英文部分：`Option 3: Online Demo → Demo URL (fill in after deployment):` 后面

### Step 3.2：验证修改
Read 回 README.md 确认：
- 不再有任何 `_______________________` 字符串
- 替换后的链接是正确的 HTTPS URL，没多余的空格/引号

### Step 3.3：Git commit & push
```bash
cd "f:\data\OneDrive - MSFT\桌面\培训"
git add README.md
git commit -m "docs: update demo links in README (both CN & EN)"
git push origin main
```

### Step 3.4：在线验证
1. 打开 `REPO_URL` → README.md 预览
2. 点击两个 Demo 超链接，验证跳转到正确的 Demo 页面

**Verify**：check_list.md T3.1~T3.4 全通过

---

## 🎯 Task 4 · 演示视频（加分项，可选）

**目标**：录一个 3~5 分钟的功能演示视频，便于评委快速理解
**验收项**：check_list.md T4.1~T4.5（5 项）
**参考脚本**：`docs/work/video_script.md`（Work 模式运行时会生成或已有模板）

### Step 4.1：生成/确认分镜脚本
检查 `video_script.md` 是否存在并包含：
- 6 个分镜：开场介绍 → 功能1计时 → 功能2 AI大纲 → 功能3录制 → 功能4笔记 → 总结
- 每个分镜有台词 + 操作指引

### Step 4.2：录制视频
- 时长目标：3~5 分钟（180~300 秒）
- 画质：1080p，16:9
- 要求：有画面有声音，清晰无水印（或平台自带水印即可）
- 建议工具：OBS Studio / 电脑自带 Xbox Game Bar（Win+G）

### Step 4.3：上传托管
- 国内：B 站（推荐）、阿里云盘分享链接
- 国外：YouTube、Google Drive
- 要求：**无需登录即可观看**（不要设密码/私密）

### Step 4.4：链接写入 submission_payload.json 的 video_url 字段（可选）

---

## 🎯 Task 5 · 填充提交系统结构化数据

**目标**：把所有需要贴到 GOAI 提交系统的内容都整理到一个 JSON 文件里，避免临时打字出错
**验收项**：check_list.md T5.1~T5.6（6 项）

### Step 5.1：生成/编辑 submission_payload.json
如果文件不存在就按模板生成，然后把 **REPO_URL、DEMO_URL、VIDEO_URL（如有）** 填进去。

模板路径：`docs/work/submission_payload.json`
结构如下（内容已预置，Work 只需填 url 字段）：
```json
{
  "submission": {
    "work_title_cn": "...",
    "work_title_en": "...",
    "track": "赛题四 · AI + 教育",
    "description_cn": "...300-500字中介绍...",
    "description_en": "...English abstract...",
    "repo_url": "<T1 输出填这里>",
    "demo_url": "<T2 输出填这里>",
    "video_url": "<T4 输出填这里，可选>"
  },
  "deploy": {
    "platform": "Vercel | GitHub Pages | Netlify",
    "deployed_at": "2026-08-15Txx:xx:xx+08:00",
    "deploy_commit": "8f304e5"
  },
  "meta": {
    "generated_by": "Trae Work Mode",
    "generated_at": "2026-08-14Txx:xx:xx+08:00"
  }
}
```

### Step 5.2：验证所有链接
逐个浏览器打开 `repo_url` `demo_url` `video_url`（如有），确保无 404

**Verify**：check_list.md T5 全通过

---

## 🎯 Task 6 · GOAI 系统正式提交（含用户登录交互）

**目标**：使用 submission_payload.json 的内容，填写 GOAI 初赛提交系统并成功提交
**验收项**：check_list.md T6.1~T6.5（5 项）
**⚠️ 这一步含大量用户交互，不能全自动完成**

### Step 6.1：打开 GOAI 提交系统
1. 浏览器打开 GOAI 初赛提交系统 URL（用户需提供）
2. **遇到登录页 → 立即调用 browser_waiting_for_user_interaction 让用户登录**
3. 登录成功后进入作品提交表单页

### Step 6.2：按 payload 填充表单
逐项读取 `submission_payload.json` 并对应填入：
- `work_title_cn` → 作品名称（中文）
- `track` → 参赛赛道
- `description_cn` → 作品介绍 / 作品简介
- `repo_url` → 代码仓库地址
- `demo_url` → Demo / 体验链接
- `video_url` → 演示视频
- 英文名称和英文简介（如有字段）→ `work_title_en` / `description_en`

### Step 6.3：提交前截图留痕
**在点击"提交"按钮之前**，截取一张完整的表单全屏截图，保存为：
`docs/work/screenshots/T6_form_before_submit.png`

### Step 6.4：点击提交并等待成功
1. 点击"提交"按钮
2. 如果出现二次确认弹窗 → 确认
3. **等待出现"提交成功"的明确视觉提示**（绿色弹窗 / 成功页面）

### Step 6.5：保存成功凭证
1. 截图成功页面 → `docs/work/screenshots/T6_submit_success.png`
2. 读取提交编号 / 提交ID / 哈希值 / 邮件确认编号
3. 写入 `docs/work/submission_receipt.txt`：
```
GOAI 2026 Preliminary Submission Receipt
=========================================
提交时间：2026-08-16 xx:xx:xx
提交账号：<填写>
提交编号：<填写>
作品名称：课拍 CourseClip
代码仓库：<REPO_URL>
Demo 链接：<DEMO_URL>
提交状态：✅ SUCCESS
```

**Verify**：check_list.md T6.1~T6.5 全通过 → **全部任务完成！** 🎉

---

## 📊 整体执行状态表（Work Agent 运行时更新）

| 任务 | 启动时间 | 结束时间 | 耗时 | 状态 |
|---|---|---|---|---|
| P0 前置检查 | - | - | - | ☐ 未开始 |
| T1 推 GitHub | - | - | - | ☐ 未开始 |
| T2 部署 Demo | - | - | - | ☐ 未开始 |
| T3 回填链接 | - | - | - | ☐ 未开始 |
| T4 演示视频 | - | - | - | ☐ 未开始 |
| T5 整理 payload | - | - | - | ☐ 未开始 |
| T6 正式提交 | - | - | - | ☐ 未开始 |

---

## 🔧 Troubleshooting 快查表

| 错误信息 | 快速解决 |
|---|---|
| `git push: Permission denied` | 检查仓库是否选了 Public，remote 是否是 HTTPS，调用用户交互完成授权 |
| `remote contains work that you do not have locally` | 说明创建仓库时误选了 README，加 `--force` 覆盖即可（只在新建仓库时这么做） |
| Vercel CLI 报 auth 错误 | 执行 `vercel login` → 选 GitHub → 浏览器完成授权 |
| GitHub Pages 一直不更新 | 再推一个空 commit：`git commit --allow-empty -m "chore: trigger pages rebuild" && git push` |
| Demo 打开显示 404 | 检查链接末尾有没有 `/CourseClip.html`，Pages 不会自动把 HTML 当 index |
| Demo 页面是白板（控制台有 CORS 错误） | 说明部署平台自动修改了内联 JS，换另一种部署平台（Vercel → Netlify） |

---

*文档版本：v1.0 · 配合 spec.md + check_list.md 一起使用*
