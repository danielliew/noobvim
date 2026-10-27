# noobvim

Beginner Neovim config — mouse on, system clipboard, Space leader, and a local cheatsheet.

```
~/.config/nvim  →  ~/workplace/noobvim
```

## What’s included

| File | Purpose |
|------|---------|
| `init.vim` | Neovim entrypoint (mouse, clipboard, leader, cheatsheet map) |
| `vimrc` | Shared Vim settings (numbers, indent, search, …) |
| `CHEATSHEET.md` | Motions, text objects, plugin roadmap — open with `<Space>h` |

## Requirements

- [Neovim](https://neovim.io/) 0.9+ (tested on 0.12)
- Optional: [Zellij](https://zellij.dev/) — use `Ctrl+s` then `e` to edit scrollback in nvim

## Install

```bash
git clone git@github.com:danielliew/noobvim.git ~/workplace/noobvim

# backup any existing config, then symlink
[ -e ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.bak.$(date +%Y%m%d)
mkdir -p ~/.config
ln -s ~/workplace/noobvim ~/.config/nvim
```

Point your shell / Zellij at nvim:

```bash
export EDITOR=nvim
export VISUAL=nvim
# Zellij: scrollback_editor "/opt/homebrew/bin/nvim"
```

## Everyday

| Keys / command | Action |
|----------------|--------|
| `<Space>h` | open cheatsheet |
| `:NvimHelp` | same |
| `:Ex` | built-in file explorer |
| `V` … `y` | select lines, yank (→ macOS clipboard) |

## Superuser path

See `CHEATSHEET.md` for motions → text objects → plugin tiers (telescope/oil/gitsigns → LSP).

## License

Personal config — use / fork freely.
