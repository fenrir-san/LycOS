{ config, pkgs, ... }:

{
  imports = [
    ./modules/waybar/waybar.nix
    ./modules/neovim/neovim.nix
    ./modules/hyprland/hyprland.nix
    ./modules/zellij/zellij.nix
    ./modules/mako/mako.nix
    ./modules/alacritty/alacritty.nix
    ./modules/rofi/rofi.nix
    ./modules/eww/eww.nix
  ];
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "fenrir";
  home.homeDirectory = "/home/fenrir";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.

  fonts.fontconfig.enable = true;
  # fonts.packages = with pkgs; [
  #   nerd-fonts.JetBrainsMono
  #   nerd-fonts.DroidSansMono
  #   nerd-fonts.Monoid
  # ];
  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [

    bat
    nushell
    wofi
    libnotify
    brightnessctl
    playerctl
    wl-clipboard
    tre-command
    lshw
    nh
    eww
    swww
    alsa-utils
    hypridle
    hyprlock
    wlsunset
    wl-gammarelay-rs
    networkmanagerapplet
    libimobiledevice
    ifuse

    thunderbird
    steam
    floorp
    discord
    gimp
    krita
    drawio
    tiled

    android-studio

    onlyoffice-bin

    micro
    # hugo
    # python3
    # go
    # ocaml
    # opam
    # dune_3
    # gcc
    # cargo
    # nodejs_22
  ];

  nixpkgs.config.allowUnfree = true;

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/raikan/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "neovim";
    TERM = "alacritty";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userEmail = "fenrir.dev@tutamail.com";
    userName = "fenrir";
  };

  programs.zsh = {
    enable = true;
  };

  programs.starship = {
    enable = true;
  };

  programs.btop = {
    enable = true;
  };

  programs.hyprlock = {
    enable = true;
  };

  programs.ripgrep = {
    enable = true;
  };

  programs.jq = {
    enable = true;
  };

}
