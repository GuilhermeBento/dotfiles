# Dotfiles

Personal dotfiles for a Linux (Debian/Ubuntu) development environment -- Bash, Vim, Tmux, Git, and more.

## What's Included

| Tool | Config | Description |
|------|--------|-------------|
| **Bash** | `.bash_profile`, `.aliases`, `.functions`, `.exports`, `.path`, `.bash_prompt` | Shell setup with git-aware prompt, vi readline mode, and useful aliases |
| **Vim** | `.vim/vimrc`, `.vim/coc-settings.json` | vim-plug, CoC.nvim (LSP), fzf integration, NERDTree, fugitive, Code Dark theme |
| **Tmux** | `.tmux.conf` | `C-a` prefix, vi copy mode, xclip clipboard, vim-aware pane navigation |
| **Git** | `.gitconfig` | Aliases, colors, URL shorthands (`gh:`, `gst:`), vimdiff merge tool |
| **i3** | `.config/i3/config`, `.config/i3status/config` | Tiling WM with vim keys, rofi launcher, maim screenshots, dunst notifications |
| **Docker** | installed via `scripts/install.sh` | Docker Engine, Compose v2, Buildx; aliases in `.aliases` |
| **NVM** | loaded in `.bash_profile` | Node version manager with bash completion |
| **keychain** | loaded in `.bash_profile` | SSH agent management (auto-loads `id_ed25519`) |
| **Other** | `.editorconfig`, `.inputrc`, `.curlrc`, `.wgetrc`, `.npmrc` | Editor defaults, readline, curl/wget options |

## Installation

### 1. Clone

```bash
git clone git@github.com:GuilhermeBento/dotfiles.git ~/apps/dotfiles
cd ~/apps/dotfiles
```

### 2. Install dependencies

```bash
bash scripts/install.sh
```

This installs core packages via `apt` (git, curl, vim, tmux, fzf, ripgrep, fd-find, etc.), sets up Docker Engine + Compose v2, hooks `.bash_profile` into `~/.bashrc`, sets up fzf key bindings, and installs Vim plugins.

### 2b. Install i3 (optional)

```bash
bash scripts/install-i3.sh
```

This installs i3, rofi, dunst, i3lock, maim, feh, udiskie, pavucontrol, and arandr. After installing, log out and select **i3** from the session menu at the login screen. GNOME stays installed -- switch back anytime.

### 3. Sync dotfiles to home directory

```bash
bash sync.sh
```

This pulls the latest changes and uses `rsync` to copy dotfiles into `~`. It will prompt before overwriting existing files. Use `--force` or `-f` to skip the prompt.

## Structure

```
.
├── .bash_profile       # Entry point -- sources .path, .bash_prompt, .exports, .aliases, .functions, .extra
├── .bash_logout        # Clears console on logout for privacy
├── .bash_prompt        # Git-aware Solarized prompt
├── .aliases            # Shell aliases
├── .functions          # Shell functions
├── .exports            # Environment variables
├── .path               # PATH additions
├── .inputrc            # Readline config (vi mode, smart completion)
├── .tmux.conf          # Tmux configuration
├── .vim/
│   ├── vimrc           # Main Vim config (vim-plug, mappings, settings)
│   ├── coc-settings.json  # CoC.nvim LSP settings
│   ├── colors/         # Color schemes
│   └── ftplugin/       # Filetype-specific settings
├── .gitconfig          # Git configuration
├── .config/
│   ├── i3/config       # i3 window manager config
│   ├── i3status/config # i3 status bar config
│   ├── rofi/config.rasi# rofi launcher theme
│   └── dunst/dunstrc   # notification daemon config
├── .editorconfig       # EditorConfig defaults
├── .curlrc             # curl defaults
├── .wgetrc             # wget defaults
├── .npmrc              # npm defaults
├── scripts/
│   ├── install.sh      # System package installation
│   └── install-i3.sh   # i3 + companion tools (optional)
├── notes/
│   └── QuickTips.md    # Personal reference notes
└── sync.sh             # Sync dotfiles into ~
```

## Customization

Create a `~/.extra` file for machine-specific settings that you don't want to commit (credentials, overrides, etc.). It is automatically sourced by `.bash_profile`.

```bash
# Example ~/.extra
export GIT_AUTHOR_NAME="Your Name"
export GIT_AUTHOR_EMAIL="your@email.com"
```

## License

[MIT](LICENSE-MIT.txt)
