# GOAI LabArm 具身智能作品打包脚本
# 用法：在 PowerShell 中执行：
#   cd "f:\data\OneDrive - MSFT\桌面\培训\embodied_labarm\.."
#   powershell -ExecutionPolicy Bypass -File embodied_labarm\scripts\build_zip.ps1
# 产物：training 目录下生成 GOAI_LabArm_参赛作品.zip

$ErrorActionPreference = "Stop"

# 注意：直接执行 ps1 时 PSScriptRoot 正确；但如果在 ISE / 无脚本环境可能为空，这里做兜底
if ([string]::IsNullOrWhiteSpace($PSScriptRoot)) {
    $PSScriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
}
if ([string]::IsNullOrWhiteSpace($PSScriptRoot)) {
    throw "无法确定脚本自身目录，请在 PowerShell 中用 -File 方式执行该 .ps1 文件。"
}

$Root = Split-Path -Parent $PSScriptRoot   # embodied_labarm/
$OutDir = Split-Path -Parent $Root         # 培训/
$ZipFile = Join-Path $OutDir "GOAI_LabArm_参赛作品.zip"

if (-not (Test-Path $Root)) { throw "找不到项目目录：$Root" }

# 清理旧 zip
if (Test-Path $ZipFile) { Remove-Item $ZipFile -Force }

# 要包含的内容（README.md 同级目录）：文件 + 目录
$Items = @(
    (Join-Path $Root "README.md"),
    (Join-Path $Root "LICENSE"),
    (Join-Path $Root "LabArm_Demo.html"),
    (Join-Path $Root "assets"),
    (Join-Path $Root "docs")
) | Where-Object { Test-Path $_ }

# 用一个临时 staging 目录，确保 zip 内根就是 "README.md / assets / docs ..." 不带父路径
$guid8 = ([guid]::NewGuid().ToString("N")).Substring(0,8)
$Stage = Join-Path $env:TEMP ("labarm_stage_" + $guid8)
New-Item -ItemType Directory -Path $Stage -Force | Out-Null
try {
    $Items | ForEach-Object {
        $dest = Join-Path $Stage (Split-Path $_ -Leaf)
        if (Test-Path $_ -PathType Container) {
            Copy-Item $_ $dest -Recurse -Force
        } else {
            Copy-Item $_ $dest -Force
        }
    }

    # 创建 LICENSE（如果用户还没放，就写 MIT 默认占位）
    $lic = Join-Path $Stage "LICENSE"
    if (-not (Test-Path $lic)) {
        Set-Content -Path $lic -Value (
@"
MIT License

Copyright (c) 2026 LabArm-Embodied Team

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
"@)
    }

    Compress-Archive -Path (Join-Path $Stage "*") -DestinationPath $ZipFile -CompressionLevel Optimal -Force

    $size = [math]::Round((Get-Item $ZipFile).Length / 1MB, 2)
    $hash = (Get-FileHash $ZipFile -Algorithm SHA256).Hash
    Write-Host "===========================================================================" -ForegroundColor Cyan
    Write-Host "✅ GOAI LabArm 作品打包完成！" -ForegroundColor Green
    Write-Host "   文件路径：$ZipFile" -ForegroundColor Gray
    Write-Host "   文件大小：$size MB" -ForegroundColor Gray
    Write-Host "   SHA256  ：$hash" -ForegroundColor Gray
    Write-Host "   下一步  ：在报名系统「作品附件 (zip)」处选择该 zip 上传。" -ForegroundColor Yellow
    Write-Host "===========================================================================" -ForegroundColor Cyan
} finally {
    Remove-Item $Stage -Recurse -Force -ErrorAction SilentlyContinue
}
