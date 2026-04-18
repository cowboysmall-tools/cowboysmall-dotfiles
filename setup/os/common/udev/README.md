# Boxput BPR3S Plus Air Mouse Remote Control


## hwdb.d

Copy the hwdb file to the following location:

```

> sudo cp setup/os/common/udev/hwdb.d/99-bpr3s.hwdb /etc/udev/hwdb.d/


```

Update and reload the hardware database:

```

> sudo systemd-hwdb update
> sudo udevadm trigger


```

