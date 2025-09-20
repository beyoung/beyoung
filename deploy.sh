#!/bin/bash

# beyoung - Cloudflare Pages 部署脚本

echo "🚀 开始部署 beyoung 到 Cloudflare Pages..."

# 检查是否安装了 wrangler
if ! command -v wrangler &> /dev/null; then
    echo "❌ Wrangler CLI 未安装，正在安装..."
    npm install -g wrangler
fi

# 检查是否已登录
if ! wrangler whoami &> /dev/null; then
    echo "🔐 请先登录到 Cloudflare..."
    wrangler login
fi

# 选择部署环境
echo "请选择部署环境："
echo "1) 生产环境 (production)"
echo "2) 测试环境 (staging)"
read -p "请输入选择 (1 或 2): " choice

case $choice in
    1)
        echo "📦 部署到生产环境..."
        wrangler pages deploy . --project-name=beyoung --compatibility-date=2024-01-01
        ;;
    2)
        echo "📦 部署到测试环境..."
        wrangler pages deploy . --project-name=beyoung-staging --compatibility-date=2024-01-01
        ;;
    *)
        echo "❌ 无效选择，默认部署到生产环境..."
        wrangler pages deploy . --project-name=beyoung --compatibility-date=2024-01-01
        ;;
esac

echo "✅ 部署完成！"
echo "🌐 访问地址: https://beyoung.pages.dev" 