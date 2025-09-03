# 这是一个 PowerShell 配置文件

function Get-LongListing {
    Get-ChildItem -Force | Format-Table -AutoSize
}

Set-Alias -Name ll -Value Get-LongListing

# 设置主题（如果安装了 Oh My Posh）
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\atomic.omp.json" | Invoke-Expression
