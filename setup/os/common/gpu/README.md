# GPU

## Prime Run (NVIDIA only)

Copy the `prime-run` script to the local bin directory:

```

> cp setup/os/common/gpu/prime-run ~/.local/bin


```

## Integrated

```

> glxinfo | grep "OpenGL renderer"


```

or explicitly:

```

> __GLX_VENDOR_LIBRARY_NAME=mesa glxinfo | grep "OpenGL renderer"


```

## Discrete (NVIDIA)

```

> prime-run glxinfo | grep "OpenGL renderer"


```

or explicitly:

```

> __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia glxinfo | grep "OpenGL renderer"

```

or:

```

> __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only glxinfo | grep "OpenGL renderer"


```

or:

```

> __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only __GL_YIELD=USLEEP glxinfo | grep "OpenGL renderer"


```

NOTE: use `__GL_YIELD=USLEEP` with caution as it seems to cause performance issues.

## Discrete (AMD)

```

> DRI_PRIME=1 glxinfo | grep "OpenGL renderer"


```
