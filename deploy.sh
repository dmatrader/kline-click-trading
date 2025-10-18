#!/bin/bash
# 快速部署到GitHub Pages的脚本

echo "📦 准备部署到GitHub Pages..."

# 检查是否已经是git仓库
if [ ! -d ".git" ]; then
    echo "❌ 这不是一个Git仓库，请先运行："
    echo "   git init"
    echo "   git remote add origin https://github.com/dmatrader/kline-click-trading.git"
    exit 1
fi

# 添加所有文件
git add .

# 提交
git commit -m "更新：添加移动端版本"

# 推送到GitHub
git push origin main

echo ""
echo "✅ 部署完成！"
echo ""
echo "📱 访问地址："
echo "   https://dmatrader.github.io/kline-click-trading/index-mobile.html"
echo ""
echo "⚠️  记得在GitHub仓库设置中启用GitHub Pages："
echo "   Settings → Pages → Source → main branch"

