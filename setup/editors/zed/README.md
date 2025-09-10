
# Zed Configs and Extensions





## Configs

Copy settings file to the zed config directory:

```

> cp misc/zed/settings.json ~/.config/zed/
> cp misc/zed/keymap.json   ~/.config/zed/
> cp misc/zed/index.json    ~/.local/share/zed/extensions/

```





## Working Extensions

These extensions work well and are essential:

```

adwaita-pastel
catppuccin
catppuccin-icons
dart
docker-compose
dockerfile
html
java
latex
lua
new-darcula
r
ruby
sql
sublime-mariana-theme
toml
vscode-classic-theme
vscode-dark-modern
vscode-dark-plus
zig


```


## Problem Extensions

These extensions do not play nicely with other extensions:

```


```




## Example Keymap Config

```

// Zed keymap
//
// For information on binding keys, see the Zed
// documentation: https://zed.dev/docs/key-bindings
//
// To see the default key bindings run `zed: open default keymap`
// from the command palette.
[
  {
    "context": "Workspace",
    "bindings": {
      // "shift shift": "file_finder::Toggle"
    }
  },
  {
    "context": "Editor && vim_mode == insert && !menu",
    "bindings": {
      // "j k": "vim::SwitchToNormalMode"
    }
  }
]


```
