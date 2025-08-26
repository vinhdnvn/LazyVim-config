# LazyVim Configuration

Cấu hình Neovim chuyên nghiệp dựa trên **LazyVim** framework, tập trung vào hiệu suất và trải nghiệm phát triển tối ưu.

## 📋 Tổng quan

Đây là một setup Neovim được tinh chỉnh cho development workflows hiện đại, bao gồm LSP, completion, git integration, database tools và terminal management.

## 🔧 Plugin Architecture

### Core Framework
- **LazyVim**: Framework cơ sở với cấu hình mặc định tối ưu
- **lazy.nvim**: Plugin manager hiệu suất cao với lazy loading

### 🎨 UI & Theme
- **tokyonight.nvim**: Colorscheme chủ (day variant)
- **catppuccin**: Colorscheme phụ
- **bufferline.nvim**: Tab management với visual indicators
- **lualine.nvim**: Status line thông tin chi tiết
- **smear-cursor.nvim**: Cursor animation mượt mà giữa các buffer/window

### 🤖 AI & Completion
- **blink.cmp**: Completion engine tốc độ cao
  - Sources: LSP, path, snippets, buffer
  - Auto-documentation display
  - Nerd font support
- **copilot.lua**: GitHub Copilot integration
  - Custom keymaps: `Ctrl+L` (accept), `Ctrl+J/K` (word/line)
  - Auto-trigger enabled

### 🗂️ File Management & Navigation
- **neo-tree.nvim**: File explorer với rich features
- **telescope.nvim**: Fuzzy finder với fzf-native optimization
  - Custom navigation: `Ctrl+J/K` for movement
- **nvim-window-picker**: Visual window selection (`<leader>w`)
- **vim-tmux-navigator**: Seamless tmux/nvim navigation

### 💻 Terminal & Git
- **toggleterm.nvim**: Multiple terminal management
  - Horizontal layout, size 15
  - Quick access: `<leader>1-5` for 5 terminals
  - Toggle: `Ctrl+\`
- **lazygit.nvim**: Git TUI integration (`<leader>gg`)
- **gitsigns.nvim**: Git status in gutter

### 🛠️ Development Tools
- **nvim-lspconfig + mason.nvim**: LSP server management
- **nvim-treesitter**: Syntax highlighting & code parsing
- **conform.nvim**: Code formatting
- **nvim-lint**: Linting engine
- **trouble.nvim**: Diagnostics panel
- **flash.nvim**: Enhanced navigation
- **grug-far.nvim**: Search and replace

### 📊 Database Tools
- **vim-dadbod**: Database interface core
- **vim-dadbod-ui**: Visual database management (`DBUI` commands)
- **vim-dadbod-completion**: SQL completion
- Support: SQL, MySQL, PLSQL

### 🎯 Text Objects & Editing
- **mini.ai**: Intelligent text objects
- **mini.pairs**: Auto-pairing với smart deletion
- **mini.surround**: Surround operations
- **nvim-ts-autotag**: Auto HTML/XML tag closing
- **todo-comments.nvim**: TODO/FIXME highlighting

### 🔔 UX Enhancements
- **noice.nvim**: Command line & notification UI
- **which-key.nvim**: Keymap discovery
- **persistence.nvim**: Session management
- **snacks.nvim**: UI utilities collection

## ⚡ Performance Optimizations

### Lazy Loading Strategy
```lua
defaults = { lazy = false }  -- Custom plugins load at startup
```

### Disabled RTP Plugins
- gzip, tarPlugin, tohtml, tutor, zipPlugin

### Checker Configuration
- Auto-update checking enabled
- Silent notifications for cleaner UX

## 🎯 Key Features

1. **Multi-Terminal Workflow**: 5 pre-configured terminals với quick access
2. **Database Integration**: Full SQL development support
3. **AI-Powered Coding**: GitHub Copilot với custom shortcuts
4. **Visual Navigation**: Window picker và tmux integration
5. **Performance First**: Optimized loading và minimal startup time

## 📁 Configuration Structure

```
lua/
├── config/
│   ├── lazy.lua      # Plugin manager setup
│   ├── options.lua   # Vim options
│   ├── keymaps.lua   # Key mappings
│   └── autocmds.lua  # Auto commands
└── plugins/          # Plugin configurations
    ├── blink.lua     # Completion engine
    ├── copilot.lua   # AI assistance
    ├── dadbod.lua    # Database tools
    ├── toggleterm.lua # Terminal management
    └── ...           # Other plugins
```

## 🔑 Essential Keybindings

### Terminal Management
- `Ctrl+\`: Toggle terminal
- `<leader>1-5`: Quick terminal access

### Git Operations
- `<leader>gg`: LazyGit interface

### Navigation
- `<leader>w`: Window picker
- `Ctrl+H/J/K/L`: Tmux/vim navigation

### AI Assistance
- `Ctrl+L`: Accept Copilot suggestion
- `Ctrl+J/K`: Accept word/line
- `Ctrl+H`: Dismiss suggestion

## 🚀 Installation Requirements

1. **Neovim** >= 0.9.0
2. **Git** for plugin management
3. **Node.js** for LSP servers
4. **ripgrep** for telescope search
5. **lazygit** for git TUI
6. **Nerd Font** for icons

## 📊 Plugin Count

Total: **48 plugins** được quản lý bởi lazy.nvim với optimal loading strategy.

---

*Cấu hình này được thiết kế cho developer muốn một setup mạnh mẽ nhưng không phức tạp, với focus vào productivity và performance.*