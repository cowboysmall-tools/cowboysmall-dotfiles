# Setup

## Archives (Root)

```

mkdir Bak && cd Bak/

tar -xzvf /run/media/jerry/Storage/Backups/Laptops/Common/Root/Bin.tar.gz


```

## Archives (User)

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

### Discrete (NVIDIA)

```

__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia glxinfo | grep "OpenGL renderer"

__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only __GL_YIELD=USLEEP glxinfo | grep "OpenGL renderer"


```

### Discrete (AMD)

```

DRI_PRIME=1 glxinfo | grep "OpenGL renderer"


```

## Steam

### Discrete (NVIDIA)

```

__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia %command%


```

### Discrete (AMD)

```

DRI_PRIME=1 %command%


```
