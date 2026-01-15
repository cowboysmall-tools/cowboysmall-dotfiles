# Setup

## Grub

```

> rpm-ostree kargs --editor


```

Add the following arguments:

```

> plymouth.force-scale=2


```

## GDM

```

> machinectl shell gdm@ /bin/bash

> gsettings set org.gnome.desktop.interface scaling-factor 2
> gsettings get org.gnome.desktop.interface scaling-factor

> gsettings set org.gnome.desktop.interface accent-color "blue"
> gsettings get org.gnome.desktop.interface accent-color


```

Specify your preferred scaling factor and accent color. Note: The above does not work
since Gnome 49 - you will need to also perform the following:

```

> cp /var/lib/gdm/.config/dconf/user /var/lib/gdm/seat0/config/dconf/user


```

If you copied monitor settings to the gdm home directory you will also need to perform
the following step:

```

> cp /var/lib/gdm/.config/monitors.xml /var/lib/gdm/seat0/config/monitors.xml


```

You may also need to do the following to restore SELinux security contexts:

```

> restorecon -RFv /var/lib/gdm/


```

## Apps (Root)

```

> rpm-ostree install zsh figlet fortume-mod stow

> usermod --shell /usr/sbin/zsh root
> usermod --shell /usr/sbin/zsh jerry


```

## Config (Root)

```

> hostnamectl set-hostname <hostname>

> ujust toggle-user-motd


```

## Config (User)

```

> gsettings get org.gnome.shell.window-switcher current-workspace-only
> gsettings set org.gnome.shell.window-switcher current-workspace-only false

> dconf write /org/gnome/Ptyxis/Profiles/<profile-id>/opacity 0.95

> ssh-keygen -t rsa

> ujust toggle-user-motd


```
