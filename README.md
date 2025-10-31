# zsh-music-plugin

Command-line interface for Apple Music on macOS. Oh My Zsh plugin for basic music controls.

## Installation

Clone the repository to your Oh My Zsh custom plugins directory:

```bash
git clone https://github.com/your-username/zsh-music-plugin.git $ZSH_CUSTOM/plugins/zsh-music-plugin
```

Add `zsh-music-plugin` to your plugins list in `~/.zshrc`:

```bash
plugins=(... zsh-music-plugin)
```

Reload your shell:

```bash
source ~/.zshrc
```

## Usage

| Command  | Short | Description        | Example                    |
| -------- | ----- | ------------------ | -------------------------- |
| -open    | -o    | Launch Apple Music | `music -o`                 |
| -vol     | -v    | Set volume (0-100) | `music -v 50`              |
| -stop    | -s    | Pause playback     | `music -s`                 |
| -play    | -p    | Resume playback    | `music -p`                 |
| -next    | -n    | Skip to next track | `music -n`                 |
| -current | -c    | Show current track | `music -c`                 |
| -query   | -q    | Search Apple Music | `music -q "big subwoofer"` |
| -help    | -h    | Show help          | `music -h`                 |

Run `music` with no arguments to display help.
