# Setup

## Grub

```

rpm-ostree kargs --editor


```

Add the following arguments:

```

plymouth.force-scale=2


```

## GDM (Root)

```

machinectl shell gdm@ /bin/bash

gsettings set org.gnome.desktop.interface scaling-factor 2
gsettings get org.gnome.desktop.interface scaling-factor

gsettings set org.gnome.desktop.interface accent-color "blue"
gsettings get org.gnome.desktop.interface accent-color


```

Specify your preferred scaling factor and accent color. Note: The above does not work
since Gnome 49 - you will need to also perform the following:

```

cp /var/lib/gdm/.config/dconf/user /var/lib/gdm/seat0/config/dconf/user


```

If you copied monitor settings to the gdm home directory you will also need to perform
the following step:

```

cp /var/lib/gdm/.config/monitors.xml /var/lib/gdm/seat0/config/monitors.xml


```

You may also need to do the following to restore SELinux security contexts:

```

restorecon -RFv /var/lib/gdm/

```

## Config (Root)

```

hostnamectl set-hostname <hostname>

ujust toggle-user-motd


```

## Config (User)

```

gsettings get org.gnome.shell.window-switcher current-workspace-only
gsettings set org.gnome.shell.window-switcher current-workspace-only false

dconf write /org/gnome/Ptyxis/Profiles/<profile-id>/opacity 0.95

ssh-keygen -t rsa

ujust toggle-user-motd


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

### Integrated

```

glxinfo | grep "OpenGL renderer"

```

### NVIDIA

```

__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia glxinfo | grep "OpenGL renderer"

__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only __GL_YIELD=USLEEP glxinfo | grep "OpenGL renderer"

```

### AMD

```

DRI_PRIME=1 glxinfo | grep "OpenGL renderer"

```

## Steam

### NVIDIA

```

__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia %command%

```

### AMD

```

DRI_PRIME=1 %command%

```
