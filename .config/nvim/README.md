# nvim

Personal Neovim configuration built on [LazyVim](https://lazyvim.org), with a curated set of language extras, LSP tooling, DAP debugging, and UI plugins.

---

## Structure

```
nvim/
├── init.lua              # Entry point — bootstraps lazy.nvim + LazyVim
├── lazyvim.json          # Enabled LazyVim extras
├── lazy-lock.json        # Pinned plugin commits
├── stylua.toml           # Lua formatter config
├── .neoconf.json         # lua_ls + neodev settings
└── lua/
    ├── config/           # Options, keymaps, autocmds, lazy bootstrap
    └── plugins/          # Custom plugin specs / overrides
```

---

## LazyVim Extras

The following extras are enabled via `lazyvim.json`:

**Languages**

| Extra | Purpose |
|---|---|
| `lang.python` | LSP, DAP, venv selector, test runner |
| `lang.typescript` | TypeScript/JS LSP + tooling |
| `lang.json` | JSON LSP + SchemaStore |
| `lang.yaml` | YAML LSP + SchemaStore |
| `lang.toml` | TOML LSP |
| `lang.markdown` | Markdown preview + render |
| `lang.prisma` | Prisma schema LSP |
| `lang.tailwind` | Tailwind CSS LSP |
| `lang.git` | Git tooling (gitsigns, lazygit) |
| `lang.docker` | Dockerfile LSP |
| `lang.terraform` | Terraform/HCL LSP |
| `lang.sql` | SQL LSP + dadbod UI |
| `lang.nix` | Nix LSP |

**Tooling**

| Extra | Purpose |
|---|---|
| `dap.core` | Debug Adapter Protocol support |
| `test.core` | Neotest test runner |
| `formatting.prettier` | Prettier via conform.nvim |
| `linting.eslint` | ESLint via nvim-lint |
| `ui.mini-animate` | Smooth scroll/cursor animations |

---

## Plugin Highlights

**Completion & Snippets**
- [blink.cmp](https://github.com/saghen/blink.cmp) — fast completion engine
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) — snippet collection

**LSP**
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) + [mason.nvim](https://github.com/williamboman/mason.nvim) — LSP server management
- [lazydev.nvim](https://github.com/folke/lazydev.nvim) — Neovim Lua API completion
- [SchemaStore.nvim](https://github.com/b0o/schemastore.nvim) — JSON/YAML schema catalog

**Treesitter**
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) + textobjects + ts-autotag

**Debugging & Testing**
- [nvim-dap](https://github.com/mfussenegger/nvim-dap) + dap-ui + dap-virtual-text + dap-python
- [neotest](https://github.com/nvim-neotest/neotest) + neotest-python

**UI**
- [catppuccin](https://github.com/catppuccin/nvim) + [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) — colorschemes
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — statusline
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) — buffer tabs
- [noice.nvim](https://github.com/folke/noice.nvim) — UI overhaul for cmdline/messages
- [snacks.nvim](https://github.com/folke/snacks.nvim) — collection of small QoL plugins
- [mini.animate](https://github.com/echasnovski/mini.nvim) — animations
- [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) — in-buffer markdown rendering
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) — browser preview

**Navigation & Editing**
- [flash.nvim](https://github.com/folke/flash.nvim) — enhanced motion/jump
- [grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim) — find and replace UI
- [trouble.nvim](https://github.com/folke/trouble.nvim) — diagnostics list
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) — highlight TODOs
- [persistence.nvim](https://github.com/folke/persistence.nvim) — session management
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) — seamless tmux/nvim pane navigation
- [which-key.nvim](https://github.com/folke/which-key.nvim) — keybind hints

**Database**
- [vim-dadbod](https://github.com/tpope/vim-dadbod) + dadbod-ui + dadbod-completion — DB client inside Neovim

**Python**
- [venv-selector.nvim](https://github.com/linux-cultist/venv-selector.nvim) — virtual environment picker

---

## Installation

```bash
git clone https://github.com/anshul333y/nvim ~/.config/nvim
nvim  # lazy.nvim bootstraps and installs everything on first launch
```

**Requirements:** Neovim ≥ 0.9, `git`, `luarocks`, a [Nerd Font](https://www.nerdfonts.com/) (Maple Mono NF recommended), and tools managed by Mason (LSP servers, DAP adapters, linters, formatters).

---

## License

Apache-2.0
