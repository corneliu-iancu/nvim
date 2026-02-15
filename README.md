# nvim

My Neovim configuration. Work in progress — evolving as I learn.

## Setup

```bash
git clone https://github.com/corneliu-iancu/nvim ~/.config/nvim
```

Open Neovim. Plugins install automatically on first launch.

## What's Inside

### Themes

| Theme | Vibe |
|-------|------|
| [rose-pine](https://github.com/rose-pine/neovim) | Soft, muted — **default** |
| [gruvbox](https://github.com/ellisonleao/gruvbox.nvim) | Warm, retro |
| [tokyonight](https://github.com/folke/tokyonight.nvim) | Cool, modern |
| [catppuccin](https://github.com/catppuccin/nvim) | Soothing pastels |
| [kanagawa](https://github.com/rebelot/kanagawa.nvim) | Japanese ink, earthy |

Switch anytime with `:colorscheme <name>`.

### Key Settings

- Relative line numbers
- 4-space indentation
- Persistent undo (survives restarts)
- No swap/backup files
- Incremental search, no lingering highlights
- Transparent backgrounds
- 80-column guide

### Keymaps

Commented out by design — ready to enable after completing `vimtutor`.

## Plugin Manager

[lazy.nvim](https://github.com/folke/lazy.nvim) — bootstraps itself, no manual install needed.

## Requirements

- Neovim >= 0.9
- Git
- A terminal with true color support
