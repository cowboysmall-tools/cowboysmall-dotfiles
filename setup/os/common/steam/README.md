# Steam and Discrete GPUs

Edit launch options for each game as follows:

## NVIDIA

```

prime-run %command%


```

or explicitly:

```

__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia %command%


```

or:

```

__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only %command%


```

or:

```

__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia __VK_LAYER_NV_optimus=NVIDIA_only __GL_YIELD=USLEEP %command%


```

NOTE: use `__GL_YIELD=USLEEP` with caution as it seems to cause performance issues.

## AMD

```

DRI_PRIME=1 %command%


```
