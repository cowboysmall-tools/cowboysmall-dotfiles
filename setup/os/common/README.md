# Setup

## Google Chrome Issue

There is an issue with the latest google chrome rpm - it adds two desktop entries with a
mis-configured entry in one of them, resulting in two chrome icons in the app overview.
A temporary fix:

```

> cp /usr/share/applications/com.google.Chrome.desktop .local/share/applications
> sed -i "2a\\NotShowIn=GNOME;KDE" .local/share/applications/com.google.Chrome.desktop


```

## Archives (Root)

```

> mkdir Bak && cd Bak/

> tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/Root/Bin.tar.gz


```

## Archives (User)

```

> mkdir Bak && cd Bak/

> tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Apps-Misc.tar.gz
> tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Apps-Dev.tar.gz Apps/zed.app
> tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Bin.tar.gz
> tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Shared.tar.gz
> tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Hidden/Dotfiles.tar.gz
> tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Hidden/Local.tar.gz
> tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Hidden/Minecraft.tar.gz
> tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Hidden/Mozilla.tar.gz
> tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Hidden/OMZ.tar.gz
> tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/User/Hidden/SSH.tar.gz


```
