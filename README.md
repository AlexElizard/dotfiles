# AlexElizard's dotfiles

Managed with [mise](https://mise.jdx.dev): [bootstrap](https://mise.jdx.dev/bootstrap.html)
installs packages/tools and [dotfiles](https://mise.jdx.dev/dotfiles.html) deploys configs.
Cross-platform — Fedora Workstation and Windows 11.

## Install

1. Install mise ([docs](https://mise.jdx.dev/installing-mise.html)):
   - Fedora: `dnf copr enable jdxcode/mise && sudo dnf install mise`
   - Windows: `winget install jdx.mise && mise plugin install winget https://github.com/Yuzu02/mise-winget`
2. Clone this repo to `~/.dotfiles`:
   ```shell
   git clone git@github.com:AlexElizard/dotfiles.git ~/.dotfiles
   ```
3. Bootstrap. The first run sets the OS explicitly, because `miserc.toml` isn't deployed yet:
   ```shell
   MISE_AUTO_ENV=1 MISE_CONFIG_FILE="$HOME/.dotfiles/.config/mise/config.toml" mise bootstrap
   ```

## Update

```shell
mise bootstrap
```

## Layout

| File                               | Purpose                                                     |
| ---------------------------------- | ----------------------------------------------------------- |
| `.config/mise/config.toml`         | Shared settings, repos, dotfiles, cross-platform tools      |
| `.config/mise/config.linux.toml`   | Fedora packages, hooks, shell activation                    |
| `.config/mise/config.windows.toml` | Windows tools (winget) and shell activation                 |
| `.config/mise/miserc.toml`         | `auto_env = true` — selects `config.<os>.toml` per platform |
| `.config/{git,zed}`                | Application configs, deployed as copies                     |
