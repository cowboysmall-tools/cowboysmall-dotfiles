# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];





  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # boot.plymouth.enable = true;




  networking.hostName = "panurge"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;





  # Set your time zone.
  time.timeZone = "Europe/Dublin";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_IE.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_IE.UTF-8";
    LC_IDENTIFICATION = "en_IE.UTF-8";
    LC_MEASUREMENT = "en_IE.UTF-8";
    LC_MONETARY = "en_IE.UTF-8";
    LC_NAME = "en_IE.UTF-8";
    LC_NUMERIC = "en_IE.UTF-8";
    LC_PAPER = "en_IE.UTF-8";
    LC_TELEPHONE = "en_IE.UTF-8";
    LC_TIME = "en_IE.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "ie";
    variant = "";
  };

  # Configure console keymap
  console.keyMap = "ie";





  users.defaultUserShell = pkgs.zsh;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jerry = {
    isNormalUser = true;
    description = "Jerry Kiely";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };





  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    curl
    htop
    btop
    figlet
    fortune
    neofetch
    fastfetch
    stow
    zip
    unzip

    kitty
    ghostty
    screen
    tmux

    brightnessctl
    taglib
    fftw
    (ncmpcpp.override {
      visualizerSupport = true;
    })
    mpd
    mpdris2

    cava
    cmatrix
    pipes
    pipes-rs

    git
    neovim
    jdk
    (python3.withPackages (python-pkgs: with python-pkgs; [
      numpy
      pandas
    ]))
    (rWrapper.override {
      packages = with rPackages; [
        ggplot2
        plyr
      ];
    })

    papirus-icon-theme
    adwaita-icon-theme
    adwaita-icon-theme-legacy
    gnome-themes-extra
    adwaita-qt
    adwaita-qt6
    nwg-look
    libsForQt5.qt5ct
    kdePackages.qt6ct

    hypridle
    hyprlock
    hyprpaper
    hyprpolkitagent
    waybar
    rofi
    wlogout
    networkmanagerapplet

    (catppuccin-sddm.override {
      flavor = "mocha";
    })

    firefox
    firefox-devedition
    google-chrome
  ];

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  fonts.packages = with pkgs; [
    adwaita-fonts
    font-awesome
    noto-fonts
    nerd-fonts.meslo-lg
    nerd-fonts.jetbrains-mono
    vista-fonts
    corefonts
  ];





  programs.uwsm.enable = true;

  programs.zsh.enable = true;

  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };





  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };





  # services.xserver.enable = true;

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    theme = "catppuccin-mocha";
    package = pkgs.kdePackages.sddm;
  };

  services.blueman.enable = true;

  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  services.gvfs.enable = true;

  services.devmon.enable = true;

  services.udisks2.enable = true;

  services.fwupd.enable = true;

  services.flatpak.enable = true;

  services.gnome.gnome-keyring.enable = true;

  security.pam.services.sddm.enableGnomeKeyring = true;

  # services.gnome.gnome-keyring.enable = true;

  # security.pam.services.sddm.enableGnomeKeyring = true;





  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment?

}
