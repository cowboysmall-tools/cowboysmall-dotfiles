

# Setup


## GDM (Root)

```

machinectl shell gdm@ /bin/bash

gsettings get org.gnome.desktop.interface scaling-factor
gsettings set org.gnome.desktop.interface scaling-factor 1

gsettings get org.gnome.desktop.interface accent-color
gsettings set org.gnome.desktop.interface accent-color "blue"

```


## Config (Root)

```

hostnamectl set-hostname <hostname>

ujust toggle-user-motd



```


## ZSH (Root)


```

rpm-ostree install zsh figlet fortume-mod stow

usermod --shell /usr/sbin/zsh root
usermod --shell /usr/sbin/zsh jerry


```


## Config (User)


```

ujust toggle-user-motd

gsettings get org.gnome.shell.window-switcher current-workspace-only
gsettings set org.gnome.shell.window-switcher current-workspace-only false

dconf write /org/gnome/Ptyxis/Profiles/<profile-id>/opacity 0.95

ssh-keygen -t rsa


```


## Apps (User)


```

mkdir Bak && cd Bak/

tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Apps-Misc.tar.gz
tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Apps-Dev.tar.gz Apps/zed.app
tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Bin.tar.gz
tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Shared.tar.gz
tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Hidden/Dotfiles.tar.gz
tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Hidden/Local.tar.gz
tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Hidden/Minecraft.tar.gz
tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Hidden/Mozilla.tar.gz
tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Hidden/OMZ.tar.gz
tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Hidden/SSH.tar.gz




```


## GPU


```

glxinfo | grep "OpenGL renderer"
DRI_PRIME=1 glxinfo | grep "OpenGL renderer" 


```

