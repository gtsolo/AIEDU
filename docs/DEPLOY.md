# 课拍 CourseClip · 部署指南 / Deployment Guide

> 由于 CourseClip 是 **零依赖纯前端单文件应用**，部署极其简单——把一个 HTML 文件上传到任意静态托管平台即可。

---

## ⏱ 最快：30 秒出 Demo 链接

| 方案 | 难度 | 时间 | 说明 |
|---|---|---|---|
| **A. 本地快速预览** | ⭐ | 10 秒 | 双击 HTML，或 `python -m http.server 8080` |
| **B. GitHub Pages** | ⭐⭐ | 3 分钟 | 免费、稳定、自带 HTTPS，参赛最常用 |
| **C. Vercel** | ⭐⭐ | 2 分钟 | 推 Git 自动部署，支持自定义域名 |
| **D. Netlify** | ⭐⭐ | 1 分钟 | 拖拽文件夹即部署，操作最轻 |
| **E. 国内 OSS (阿里云/腾讯云)** | ⭐⭐⭐ | 5 分钟 | 国内访问快，需要备案域名 |

---

## A. 本地快速预览（无需联网）

### A1. 双击即可打开
```bash
# 1. 找到仓库中的 CourseClip.html
# 2. 右键 → 打开方式 → Chrome / Microsoft Edge
```

⚠️ **注意**：`file://` 协议下，录音、摄像头、屏幕共享可能被浏览器安全策略限制。如果需要测试录制功能，用下面的本地服务器方式。

### A2. 本地 HTTP 服务器（推荐，功能最完整）

**Python 3 方式（系统自带，无需安装）：**
```bash
cd /path/to/project
python -m http.server 8080
# 浏览器打开 http://localhost:8080/CourseClip.html
```

**Node.js 方式：**
```bash
npx serve .
# 或
npx http-server . -p 8080
```

**PHP 方式：**
```bash
php -S localhost:8080
```

---

## B. GitHub Pages（免费 · 推荐提交用）

### 前置条件
- 拥有 GitHub 账号
- 已安装 Git

### 步骤

```bash
# 1. 新建仓库（GitHub 网页操作）
#    New Repository → 起名如 goai-courseclip → Public → Create

# 2. 初始化本地仓库（如果还没初始化）
git init
git add -A
git commit -m "chore: init GOAI preliminary submission - CourseClip v1.0"
git branch -M main

# 3. 关联远程仓库（把 YOUR_USERNAME 和 REPO 换成你自己的）
git remote add origin https://github.com/YOUR_USERNAME/goai-courseclip.git
git push -u origin main

# 4. 开启 Pages 服务（GitHub 网页操作）：
#    Settings → Pages → Source: "Deploy from a branch"
#                     → Branch: main, / (root)
#                     → Save
#
#    等待 1~2 分钟后，会生成一个链接：
#    ✅  https://YOUR_USERNAME.github.io/goai-courseclip/CourseClip.html
```

### ✨ 进阶：短链接美化
如果觉得链接太长，可以：
1. 把 `CourseClip.html` 改名成 `index.html`，访问时省去文件名
2. 使用自定义域名（GitHub Pages 设置里配置）
3. 使用短链服务（如 t.ly、tinyurl.com）生成短链接贴到提交表单

---

## C. Vercel（推 Git 自动部署）

### 前置条件
- Vercel 账号（可用 GitHub 直接登录）
- 项目已推送到 GitHub

### 步骤

**方案 1：网页操作（最推荐）**
1. 打开 https://vercel.com/new
2. 选择刚才的 GitHub 仓库 `goai-courseclip`
3. Framework Preset 选 **Other**（因为是纯静态）
4. Root Directory 保持默认
5. Build Command 留空
6. Output Directory 留空
7. **Deploy** ✅

几秒后就会得到类似这样的 Demo 链接：
```
✅  https://goai-courseclip-xxxxx.vercel.app/CourseClip.html
```

**方案 2：命令行一键部署**
```bash
npm i -g vercel
cd /path/to/project
vercel --yes
# 首次需要登录，执行完会直接打印出生产和预览链接
```

---

## D. Netlify（拖拽部署 · 1 分钟出链）

### 方式一：拖拽（最快！）
1. 打开 https://app.netlify.com/drop
2. 把整个项目文件夹 **拖进去**
3. 完成！立即得到一个随机子域名的链接：
   ```
   ✅  https://random-words-12345.netlify.app/CourseClip.html
   ```

### 方式二：关联 Git 仓库（后续提交自动更新）
1. https://app.netlify.com/start
2. 选 GitHub → 选仓库 → Deploy settings 都留空 → Deploy
3. Done

### 💡 小技巧
- 想省掉 URL 里的 `/CourseClip.html`？把主文件重命名为 `index.html`
- 自定义 Site name：Site settings → Change site name → 改成 `goai-courseclip`，得到：
  ```
  https://goai-courseclip.netlify.app/CourseClip.html
  ```

---

## E. 国内 OSS（阿里云 / 腾讯云 COS）

适合国内评委访问速度要求高的场景。

### 阿里云 OSS
1. 创建 Bucket（公共读，区域选国内）
2. 上传 `CourseClip.html` + `README.md`
3. 开启「静态网站托管」，默认首页填 `CourseClip.html`
4. 绑定自定义域名（可选，需要备案）
5. 得到类似：`https://bucket.oss-cn-hangzhou.aliyuncs.com/CourseClip.html`

### 腾讯云 COS
流程和阿里云几乎一致，最终得到：
`https://bucket-1250000000.cos.ap-beijing.myqcloud.com/CourseClip.html`

---

## ✅ 提交 Demo 链接检查清单

无论用哪种方式部署，**提交前务必按以下清单检查**：

| # | 检查项 | 通过标准 |
|---|---|---|
| 1 | 🔗 可访问性 | 无痕窗口打开链接，能正常加载完整页面 |
| 2 | 📱 主要功能点击 | "AI 生成大纲"弹窗、阶段列表、开始按钮、笔记输入框都可见 |
| 3 | 🎙 录制功能 | 点击录制按钮能正确请求麦克风/摄像头权限（HTTPS 或 localhost 必须） |
| 4 | 📚 PDF 上传 | 点击"上传 PDF"能正常选择文件 |
| 5 | 🎨 主题自适应 | 切换系统深色/浅色模式，页面配色自动跟随 |
| 6 | 📱 响应式 | 将浏览器宽度缩到 960px 以下，布局变成上下堆叠，不出现横向滚动条 |
| 7 | 🔒 HTTPS | 部署链接必须是 HTTPS（否则浏览器禁用摄像头/麦克风API） |

### ❌ 常见失败原因
| 现象 | 原因 | 解决方案 |
|---|---|---|
| 录音按钮点击后报错 "Permission denied" | 页面是 HTTP 协议或 file:// | 改用 HTTPS 或 localhost |
| PDF 上传后没显示 | 某些托管平台限制 iframe 加载本地 blob | 换 GitHub Pages / Vercel 测试 |
| 分享屏幕功能灰掉 | 非安全上下文 | 同上，使用 HTTPS / localhost |

---

## 🎯 最终提交用什么？

**推荐组合（初赛最稳）：**

```
✅ 代码仓库：GitHub (Public)
   链接示例：https://github.com/YOUR_USERNAME/goai-courseclip

✅ Demo 链接：Vercel 或 Netlify 自动部署
   链接示例：https://goai-courseclip.vercel.app/CourseClip.html
   (国内访问也很快，评委无需特殊网络环境)
```

提交到 GOAI 系统时，把上述两个链接粘贴到对应字段即可。祝比赛顺利！🎉

---

*文档版本：v1.0 · 适用于课拍 CourseClip v1.0*
