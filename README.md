# beyoung - 个人作品集

### Hi there 👋

<img align="right" src="https://github-readme-stats.vercel.app/api?username=beyoung&show_icons=true&icon_color=0366d6&text_color=24292e&bg_color=ffffff&hide_title=true" />

- 🔭 I'm currently working at xingzhe as a backend&gis engineer.
- 🌱 I'm currently learning devops. 
- 📫 How to reach me: dHV3ZW55b3VuZ0BnbWFpbC5jb20= .

[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fbeyoung&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)

## 🚀 项目部署

这个项目已经配置好可以直接部署到 Cloudflare Pages。

### 本地开发

```bash
# 安装依赖
npm install

# 启动本地开发服务器
npm run dev
```

### 部署到 Cloudflare Pages

#### 方法一：使用 Wrangler CLI

```bash
# 安装 Wrangler CLI
npm install -g wrangler

# 登录到 Cloudflare
wrangler login

# 部署到生产环境
npm run deploy

# 部署到测试环境
npm run deploy:staging
```

#### 方法二：通过 GitHub 自动部署

1. 将代码推送到 GitHub 仓库
2. 在 Cloudflare Dashboard 中创建新的 Pages 项目
3. 连接你的 GitHub 仓库
4. 设置构建配置：
   - **Build command**: `npm run build`
   - **Build output directory**: `.`
   - **Root directory**: `/` (留空)
5. 点击部署

### 项目结构

```
beyoung/
├── index.html          # 主页面
├── wrangler.toml       # Cloudflare Wrangler 配置
├── _headers           # HTTP 头配置
├── _redirects         # 重定向规则
├── package.json       # 项目配置
├── .gitignore         # Git 忽略文件
└── README.md          # 项目说明
```

### 技术栈

- **前端**: HTML5, CSS3, JavaScript (ES6+)
- **部署**: Cloudflare Pages
- **CDN**: Cloudflare CDN
- **安全**: CSP, HSTS, X-Frame-Options 等

### 特性

- ✨ 响应式设计，支持移动端
- 🎨 现代化 UI 设计
- 🚀 快速加载，CDN 加速
- 🔒 安全配置，防止 XSS 和点击劫持
- 📱 PWA 友好
- 🌐 国际化支持

### 自定义域名

部署完成后，你可以在 Cloudflare Pages 设置中添加自定义域名。

### 性能优化

- 静态资源压缩
- 浏览器缓存优化
- CDN 全球分发
- 安全头配置

---

**Live Demo**: [https://beyoung.pages.dev](https://beyoung.pages.dev)
