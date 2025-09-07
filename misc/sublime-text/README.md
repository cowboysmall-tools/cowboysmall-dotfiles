
# Sublime Text Configs and Packages





## Configs

Copy settings files to the sublime text config directory:

```

> cp misc/sublime-text/Preferences.sublime-settings     ~/.config/sublime-text/Packages/User
> cp misc/sublime-text/Default (Linux).sublime-keymap   ~/.config/sublime-text/Packages/User
> cp misc/sublime-text/Default (Linux).sublime-mousemap ~/.config/sublime-text/Packages/User

```





## Working Packages

These packages work well and are essential:

```

Catppuccin color schemes.sublime-package
Dartlight.sublime-package
Dockerfile Syntax Highlighting.sublime-package
FileIcons.sublime-package
GitGutter.sublime-package
Gomod.sublime-package
Julia.sublime-package
LSP.sublime-package
LSP-clangd.sublime-package
LSP-Dart.sublime-package
LSP-dockerfile.sublime-package
LSP-file-watcher-chokidar.sublime-package
LSP-gopls.sublime-package
LSP-jdtls.sublime-package
LSP-json.sublime-package
LSP-julia.sublime-package
LSP-lemminx.sublime-package
LSP-lua.sublime-package
LSP-pyright.sublime-package
LSP-R.sublime-package
LSP-rust-analyzer.sublime-package
LSP-TexLab.sublime-package
LSP-yaml.sublime-package
Package Control.sublime-package
R-IDE.sublime-package
Rust Enhanced.sublime-package
SublimeLinter.sublime-package
SublimeLinter-chktex.sublime-package
SublimeLinter-clang.sublime-package
SublimeLinter-flake8.sublime-package
SublimeLinter-json.sublime-package
SublimeLinter-lua.sublime-package
SyncedSideBar.sublime-package
Terminus.sublime-package
TOML.sublime-package
Zig Language.sublime-package

```





## Problem Packages

This package does not play nicely with the LSP-jdtls package:

```

SublimeLinter-javac.sublime-package

```
