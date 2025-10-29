# Update / Upgrade Notes

## Remove Dropped Packages

After upgrading you may want to remove these
old Gnome apps that have been dropped / replaced:

```

> dnf remove totem evince eog devhelp rhythmbox gnome-screenshot


```

# Installation Notes

## NPM Global Prefix

Create global prefix directory:

```

> mkdir ~/.npm-global
> npm config set prefix "~/.npm-global"


```

and then add it to .zshrc:

```

export NPM_PREFIX=$HOME/.npm-global
export PATH=$NPM_PREFIX/bin:$PATH


```

install extensions:

```

> npm install --global web-ext


```
