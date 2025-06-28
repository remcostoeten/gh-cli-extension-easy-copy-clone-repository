# gh-repo-fuzzy

A GitHub CLI extension for fuzzy searching and easy copying/cloning of repositories.

## Description

This extension enhances the GitHub CLI (`gh`) with fuzzy search capabilities to quickly find, copy, and clone repositories. It provides an interactive interface to search through your repositories and easily get repository URLs or clone them locally.

## Installation

Install the extension directly from GitHub:

```bash
gh extension install remco-stoeten/gh-cli-extension-easy-copy-clone-repository
```

Verify the installation:

```bash
gh repo-fuzzy --version
```

## Usage

### Interactive Mode

Launch the interactive fuzzy picker:

```bash
gh repo-fuzzy
```

This will:
1. Fetch your repositories from GitHub
2. Open an interactive fuzzy search interface
3. Allow you to filter repositories by typing
4. Copy or clone the selected repository

### Command Options

```bash
# Show help information
gh repo-fuzzy --help

# Show version information
gh repo-fuzzy --version
```

### Demo

*Note: A GIF or asciicast demo will be added here showing the interactive picker in action.*

<!-- TODO: Add asciicast or GIF demonstration -->
<!-- 
![Demo](demo.gif)
Or:
[![asciicast](https://asciinema.org/a/demo-id.svg)](https://asciinema.org/a/demo-id)
-->

## Key Bindings

| Key | Action | Description |
|-----|--------| ----------- |
| `ENTER` | Copy to clipboard | Copies the selected repository name to clipboard |
| `CTRL-C` | Clone repository | Clones the selected repository to current directory |
| `ESC` | Cancel | Exit the picker without any action |
| `↑/↓` or `j/k` | Navigate | Move up/down through the repository list |
| Type to search | Filter | Type any text to filter repositories by name |

## Requirements

- **GitHub CLI (`gh`)** version 2.0 or higher
  - Must be authenticated: `gh auth login`
- **fzf** (fuzzy finder) for interactive search
  - Install via package manager or [from source](https://github.com/junegunn/fzf)
- **git** for cloning operations
- **Clipboard utilities** (for copy functionality):
  - **Wayland**: `wl-clipboard` package
  - **X11**: `xclip` package

## Troubleshooting

### Clipboard Issues

**Problem**: "Clipboard utilities not found" error

**Solution**: Install the appropriate clipboard utility for your system:

```bash
# For Wayland (GNOME, KDE on Wayland, Sway, etc.)
sudo apt install wl-clipboard  # Debian/Ubuntu
sudo dnf install wl-clipboard  # Fedora
sudo pacman -S wl-clipboard   # Arch

# For X11 (traditional desktop environments)
sudo apt install xclip         # Debian/Ubuntu
sudo dnf install xclip         # Fedora
sudo pacman -S xclip          # Arch
```

**Problem**: Text not copying to clipboard

**Solutions**:
1. Verify clipboard utility is installed and working:
   ```bash
   echo "test" | wl-copy && wl-paste  # Wayland
   echo "test" | xclip -selection clipboard && xclip -selection clipboard -o  # X11
   ```
2. Check if you're running in a proper terminal session (not SSH without X11 forwarding)
3. Try both utilities if unsure about your display server

**Problem**: "No repositories found" error

**Solutions**:
1. Ensure you're authenticated: `gh auth status`
2. Login if needed: `gh auth login`
3. Check if you have any repositories: `gh repo list`
4. Verify network connectivity

**Problem**: "fzf is not installed" error

**Solution**: Install fzf:
```bash
# Using package managers
sudo apt install fzf          # Debian/Ubuntu
sudo dnf install fzf          # Fedora
sudo pacman -S fzf           # Arch
brew install fzf             # macOS

# Or install manually
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

### Development

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for version history and changes.
