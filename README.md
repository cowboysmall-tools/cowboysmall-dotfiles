# cowboysmall-dotfiles

Various dotfiles for setting up systems - Fedora, Gentoo, NixOS.


## Terminal Services

To enable music player daemon, you need to enable the following services: 


```
> systemctl --user enable --now mpd.service
> systemctl --user enable --now mpDris2.service

```


## Hyprland Services

For a functioning Hyprland you will need to enable the following user services: 


```
> systemctl --user enable --now hypridle.service
> systemctl --user enable --now hyprpaper.service
> systemctl --user enable --now hyprpolkitagent.service
> systemctl --user enable --now waybar.service

```


## User Services

Example user services:


```

> systemctl --user list-units --type=service                                                                           ✔
  UNIT                                                  LOAD   ACTIVE SUB     DESCRIPTION                                          >
  app-blueman@autostart.service                         loaded active running Blueman Applet
  app-geoclue\x2ddemo\x2dagent@autostart.service        loaded active running Geoclue Demo agent
  app-nm\x2dapplet@autostart.service                    loaded active running NetworkManager Applet
  app-org.freedesktop.problems.applet@autostart.service loaded active running Problem Reporting
  app-sealertauto@autostart.service                     loaded active running SELinux Troubleshooter
  at-spi-dbus-bus.service                               loaded active running Accessibility services bus
  dbus-:1.23-org.a11y.atspi.Registry@0.service          loaded active running dbus-:1.23-org.a11y.atspi.Registry@0.service
  dbus-broker.service                                   loaded active running D-Bus User Message Bus
  dconf.service                                         loaded active running User preferences database
  gvfs-daemon.service                                   loaded active running Virtual filesystem service
  hypridle.service                                      loaded active running Hyprland's idle daemon
  hyprpaper.service                                     loaded active running Fast, IPC-controlled wallpaper utility for Hyprland.
  hyprpolkitagent.service                               loaded active running Hyprland Polkit Authentication Agent
  mpd.service                                           loaded active running Music Player Daemon
  obex.service                                          loaded active running Bluetooth OBEX service
  pipewire-pulse.service                                loaded active running PipeWire PulseAudio
  pipewire.service                                      loaded active running PipeWire Multimedia Service
  systemd-tmpfiles-setup.service                        loaded active exited  Create User Files and Directories
  waybar.service                                        loaded active running Highly customizable Wayland bar for Sway and Wlroots >
  wayland-session-bindpid@1206.service                  loaded active running Bind graphical session to PID 1206
  wayland-wm-env@hyprland.desktop.service               loaded active exited  Environment preloader for Hyprland, An intelligent dy>
  wayland-wm@hyprland.desktop.service                   loaded active running Main service for Hyprland, An intelligent dynamic til>
  wireplumber.service                                   loaded active running Multimedia Service Session Manager
  xdg-desktop-portal-gtk.service                        loaded active running Portal service (GTK/GNOME implementation)
  xdg-desktop-portal-hyprland.service                   loaded active running Portal service (Hyprland implementation)
  xdg-desktop-portal.service                            loaded active running Portal service
  xdg-document-portal.service                           loaded active running flatpak document portal service
  xdg-permission-store.service                          loaded active running sandboxed app permission store

Legend: LOAD   → Reflects whether the unit definition was properly loaded.
        ACTIVE → The high-level unit activation state, i.e. generalization of SUB.
        SUB    → The low-level unit activation state, values depend on unit type.

28 loaded units listed. Pass --all to see loaded but inactive units, too.
To show all installed unit files use 'systemctl list-unit-files'.

```

