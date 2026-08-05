# AlexElizard's dotfiles

Managed with [mise](https://mise.jdx.dev): [bootstrap](https://mise.jdx.dev/bootstrap.html)
installs packages and development tools, while [dotfiles](https://mise.jdx.dev/dotfiles.html)
deploys application configs. These dotfiles target Fedora Workstation.

## Install

1. Install mise with the [official installer](https://mise.jdx.dev/installing-mise.html):
   ```shell
   curl https://mise.run | sh
   ```
2. Clone this repo to `~/.dotfiles`:
   ```shell
   git clone git@github.com:AlexElizard/dotfiles.git ~/.dotfiles
   ```
3. Bootstrap using the repository config. The absolute path to `mise` makes the command
   work before shell activation is deployed:
   ```shell
   MISE_CONFIG_FILE="$HOME/.dotfiles/.config/mise/config.toml" ~/.local/bin/mise bootstrap
   ```

## Update

```shell
mise bootstrap
```

## Layout

| File                       | Purpose                                                   |
| -------------------------- | --------------------------------------------------------- |
| `.config/mise/config.toml` | Fedora packages, development tools, hooks, and dotfiles   |
| `.config/mise/miserc.toml` | Global mise settings, deployed with the rest of `.config` |
| `.config/mise/tasks`       | Custom mise tasks                                         |
| `.config/{git,ruff,zed}`   | Application configs, deployed as copies                   |
