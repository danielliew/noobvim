# Neovim Cheatsheet (local)

Open anytime: `<Space>h` in normal mode, or `:NvimHelp`

---

## Survival kit (learn these first)

| Keys | Action |
|------|--------|
| `h j k l` | left / down / up / right |
| `w` `b` `e` | next word / back / end of word |
| `0` `^` `$` | line start / first non-blank / end |
| `gg` `G` | file top / bottom |
| `{` `}` | prev / next paragraph |
| `i` `a` `I` `A` | insert / append / line-start / line-end |
| `o` `O` | new line below / above |
| `v` `V` `Ctrl-v` | visual char / line / block |
| `y` `d` `c` | yank / delete / change |
| `p` `P` | paste after / before |
| `u` `Ctrl-r` | undo / redo |
| `.` | repeat last change |
| `/pattern` `n` `N` | search / next / prev |
| `*` `#` | search word under cursor |
| `:w` `:q` `:q!` `:wq` | write / quit / force quit / write+quit |
| `:e file` | open file |
| `:Ex` | built-in file explorer (netrw) |
| `Ctrl-s` then `e` | Zellij: edit full scrollback in nvim |

**Leader key in this config:** `Space`

---

## Selection / yank (your Zellij workflow)

| Keys | Action |
|------|--------|
| `V` then move | select lines |
| `ggVG` | select entire buffer |
| `y` | yank selection (also → macOS clipboard) |
| `"+y` | yank to system clipboard (explicit) |
| `ggVGy` | copy whole file |
| `:q!` | quit scrollback buffer without saving |

Mouse works (`mouse=a`). In Zellij, hold **Shift** if the mouse is stolen.

---

## Windows, buffers, tabs

| Keys | Action |
|------|--------|
| `:sp` `:vs` | split horizontal / vertical |
| `Ctrl-w h/j/k/l` | move between splits |
| `Ctrl-w q` | close split |
| `:bn` `:bp` | next / prev buffer |
| `:bd` | delete buffer |
| `gt` `gT` | next / prev tab |

---

## Text objects (superuser multiplier)

After `d` / `c` / `y` / `v`:

| Object | Meaning |
|--------|---------|
| `iw` `aw` | inner / a word |
| `i"` `a"` | inside / around quotes (also `'`, `` ` ``) |
| `i(` `a(` | inside / around parens (also `[{<`) |
| `ip` `ap` | inner / a paragraph |
| `it` `at` | inner / a HTML/XML tag |

Examples: `di"` delete inside quotes · `ci(` change inside parens · `yap` yank paragraph.

---

## Marks, jumps, macros

| Keys | Action |
|------|--------|
| `ma` | set mark `a` |
| `'a` | jump to mark `a` |
| `Ctrl-o` `Ctrl-i` | jump back / forward |
| `qa` … `q` | record macro `a` / stop |
| `@a` `@@` | replay macro / replay last |

---

## Built-in help (use this constantly)

| Command | What |
|---------|------|
| `:help` | help home |
| `:help topic` | e.g. `:help motion.txt` |
| `:help vimtutor` | interactive tutor (or run `vimtutor` in shell) |
| `:helpgrep foo` | search all help |
| `K` | help for word under cursor (LSP later) |

---

## Plugin roadmap (install in this order)

Don’t install everything day one. Each tier unlocks a new skill.

### Tier 0 — none required
You’re here. Master motions, visual mode, text objects, `:Ex`, `/`, macros.

### Tier 1 — daily drivers (install next)
| Plugin | Why |
|--------|-----|
| **lazy.nvim** (or Neovim 0.12 `vim.pack`) | plugin manager |
| **telescope.nvim** *or* **fzf-lua** *or* **snacks.nvim** picker | fuzzy find files / grep / buffers — replaces hunting with `:Ex` |
| **oil.nvim** *or* **nvim-tree** | editable dir buffer *or* classic filetree sidebar |
| **gitsigns.nvim** | git hunks in the gutter |
| **nvim-treesitter** | better highlighting + smart text objects |
| **which-key.nvim** | popup of available keybinds after leader |

### Tier 2 — feel like an IDE
| Plugin | Why |
|--------|-----|
| **nvim-lspconfig** + **mason.nvim** | language servers (go-to-def, rename, diagnostics) |
| **blink.cmp** *or* **nvim-cmp** | autocomplete |
| **conform.nvim** | format on save |
| **lualine.nvim** | statusline with mode/branch/diagnostics |

### Tier 3 — taste / power
| Plugin | Why |
|--------|-----|
| **mini.surround** / **vim-surround** | change `"` → `'` etc. in one motion |
| **fugitive** *or* **neogit** | git as buffers / Magit-style UI |
| **trouble.nvim** | diagnostics list |
| **flash.nvim** *or* **leap.nvim** | jump anywhere on screen |
| **tokyonight** / **catppuccin** | colorscheme |

### Fast path alternative
If you want batteries-included instead of assembling:
- **kickstart.nvim** — one commented file; best for *learning* config
- **LazyVim** — full distro; best for *productivity now*, customize later

---

## Superuser learning path

1. **Week 1:** motions + visual + yank/delete/change. Disable arrow keys if brave.
2. **Week 2:** text objects (`diw`, `ci"`, `yap`) + `.` repeat + macros for boring edits.
3. **Week 3:** splits/buffers + fuzzy finder plugin. Stop using the mouse for navigation.
4. **Week 4:** LSP for one language you use daily (Python for this course).
5. Ongoing: when something feels slow, `:help` it or add **one** plugin — not five.

Practice drill: open any file, delete a function with text objects only, yank a paragraph, replay a macro across 5 lines.

---

## This machine’s setup notes

- Repo: `~/workplace/noobvim` → symlinked as `~/.config/nvim`
- Config: `init.vim` (sources bundled `vimrc`)
- Mouse: on (`mouse=a`)
- Clipboard: macOS pasteboard via `unnamedplus`
- `$EDITOR` / Zellij scrollback: nvim
- Cheatsheet: this file (`<Space>h`)

