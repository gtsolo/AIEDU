# 任务拆解 | Tasks

> 项目：LabArm-Embodied · 高校智慧实验室复杂接触操作系统
>
> 共 7 个任务（L0 前置验证 + L1~L6 主任务），按依赖顺序执行。

---

## L0 前置验证（一次性）

**目标**：确认工作三件套就位 + 输出目录创建

执行步骤：
1. [ ] 创建项目根目录 `embodied_labarm/` 及其子目录结构（见下）
2. [ ] 确认 `spec.md / tasks.md / check_list.md` 三者均存在
3. [ ] 确认 Python 3.10+ 与 Node.js 18+ 可用（若需本地预览 Demo）

目录结构：
```
embodied_labarm/
├── README.md                     ← 核心方案书（中英双语）
├── LICENSE
├── LabArm_Demo.html              ← 可交互仿真 Demo
├── assets/
│   ├── architecture.svg          ← 技术架构图
│   ├── vla_flowchart.svg         ← VLA 大模型决策流程图
│   └── scenes/                   ← 4 类场景示意图
└── docs/
    └── work/
        ├── spec.md               ← 本文档的 spec 版本
        ├── tasks.md              ← 本文件
        ├── check_list.md         ← 验收清单
        ├── submission_payload.json
        └── submission_receipt.txt
```

验收：`tree embodied_labarm` 结构与上表一致

---

## L1 核心方案书 README.md（中英双语）

**目标**：产出覆盖 5 × 20 分 = 100 分评分维度的完整方案书

执行步骤：
1. [ ] 章节 1：项目概述 + 摘要（中英双语）
2. [ ] 章节 2：技术路线（架构图 + 5 层技术栈说明）
3. [ ] 章节 3：4 类接触操作任务详解（O1~O4 含物理参数）
4. [ ] 章节 4：AI 大模型结合方案 — VLA 决策流程图 + Prompt 模板 + 异常恢复策略
5. [ ] 章节 5：鲁棒性仿真实验设计（干扰矩阵 + 评估指标）
6. [ ] 章节 6：综合创新性说明（概念创新 + 技术创新双清单）
7. [ ] 章节 7：市场/教学落地可行性（高校实验场景痛点对标 + 推广路径）
8. [ ] 章节 8：仿真→实机迁移路线（决赛场景对齐）
9. [ ] 章节 9：参考文献与团队信息

验收标准（check_list 对应 C 项）：
- [ ] 每个评分维度有 **专属章节** + **可量化指标**
- [ ] AI 大模型结合章节含流程图 + 至少 1 个 Prompt 样例
- [ ] 赛道专业维度章节覆盖：操作智能性、感知反馈、技术先进性、仿真迁移 4 子项
- [ ] 字数：中文 ≥ 6000 字，英文摘要 ≥ 300 words

---

## L2 技术架构图 + VLA 决策流程图（SVG/HTML）

**目标**：用可视化呈现方案，提升评审第一印象

执行步骤：
1. [ ] 架构图 `architecture.svg`：5 层结构（感知→融合→VLA 决策→运动规划→控制+执行）
2. [ ] VLA 流程图 `vla_flowchart.svg`：用户自然语言指令 → InternVL2-VL 解析 → 子任务拆解 → 接触状态监测 → 世界模型预测 → 异常恢复分支
3. [ ] 4 类操作场景示意图（可用 HTML 内嵌 SVG 或导出 PNG）

验收：
- [ ] 2 张 SVG 在浏览器打开无乱码、布局清晰
- [ ] VLA 流程图含 **至少 3 处大模型显式介入节点**（对应评分维度 4）

---

## L3 可交互仿真 Demo（LabArm_Demo.html）

**目标**：零依赖、可在线打开、展示 4 类操作任务 + VLA 决策过程

技术方案：单文件 HTML5 + Canvas + Three.js（2D 俯视图 + 3D 小窗口）

功能需求：
1. [ ] 首页：项目标题 + 4 个任务卡片（O1~O4）
2. [ ] 每个任务页面：
   - [ ] 左：任务场景动画（门开锁、抽屉拉推、旋钮转动、试管插拔）
   - [ ] 中：VLA 决策日志面板（打印大模型输出的 Action Token 序列）
   - [ ] 右：多模态传感器读数（力/力矩曲线 RGB 条、接触状态概率图）
3. [ ] "鲁棒性扰动开关"面板：用户可拖动位置偏差/摩擦变化滑块，观察成功率变化
4. [ ] 顶部导航：可跳转其他任务 + 查看架构图

验收：
- [ ] 直接双击 `.html` 可在 Chrome/Edge 打开（无服务器）
- [ ] 4 个任务动画均完整可播放（≥15s 时长）
- [ ] 扰动滑块至少 2 档，成功率数字实时变化

---

## L4 结构化提交数据（submission_payload.json）

**目标**：统一存放提交信息、URL、验证标记，方便 Work 模式后续自动化

字段（必须全部填充）：
```json
{
  "project_code": "LABARM-EMBODIED-V1",
  "project_name_cn": "LabArm-Embodied：基于 VLA 大模型的高校智慧实验室复杂接触操作系统",
  "project_name_en": "LabArm-Embodied: VLA-Powered Complex Contact Operation for Smart University Labs",
  "track": "AI + 具身智能 · 具身智能复杂接触操作与机构交互",
  "category": "高校组",
  "repo_url": "",
  "demo_url_online": "",
  "demo_file_local": "LabArm_Demo.html",
  "scoring_dimensions": {
    "technical_feasibility_20":   { "score_estimate": 17, "verified": false },
    "market_feasibility_20":      { "score_estimate": 16, "verified": false },
    "innovation_20":              { "score_estimate": 16, "verified": false },
    "llm_integration_20":         { "score_estimate": 17, "verified": false },
    "track_specific_20":          { "score_estimate": 17, "verified": false }
  },
  "scenarios_covered": ["O1 门锁开启","O2 抽屉推拉","O3 旋钮阀门旋转","O4 试管插拔装配"],
  "llm_nodes_count": 3,
  "submission_deadline": "2026-09-10T23:59:59+08:00",
  "checklist_pass_count": 0,
  "checklist_total_count": 0
}
```

验收：JSON 可解析、必填字段非空、与 README 一致。

---

## L5 方案自查 + check_list 逐项打勾

**目标**：在提交前完成 30+ 验收项逐项核对

执行步骤：
1. [ ] 打开 `docs/work/check_list.md`
2. [ ] 按 P0 前置 → L1~L4 对应验收项顺序逐项执行
3. [ ] 将通过项标 `[x]` 并在备注栏填验证证据
4. [ ] 未通过项写清楚 issue + 修复计划
5. [ ] 汇总通过率填入 `submission_payload.json`

验收：checklist 通过率 ≥ 90%

---

## L6 zip 打包 + 提交流程清单

**目标**：生成 `GOAI_LabArm_参赛作品.zip`，并给出上传步骤

执行步骤：
1. [ ] 运行打包脚本 `scripts/build_zip.ps1`（压缩：README.md, LICENSE, LabArm_Demo.html, assets/, docs/）
2. [ ] 校验 zip 大小 ≤ 50MB，内含文件清单无缺
3. [ ] 打开报名系统 → 进入作品提交页 → 上传 zip → 粘贴摘要与方案链接
4. [ ] 保存提交截图到 `docs/work/screenshots/submit_success.png`
5. [ ] 填写 `submission_receipt.txt` 含：提交时间 + 提交人 + 校验和

---

## 任务依赖图

```
L0 (前置)
 └─→ L1 (README 方案书)
      ├─→ L2 (架构图/流程图)        可并行
      ├─→ L3 (HTML Demo)            可并行
      └─→ L4 (submission_payload)
           └─→ L5 (check_list 自查)
                 └─→ L6 (zip 打包 & 提交)
```
