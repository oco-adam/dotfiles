{ config, pkgs, ...}:

{
  imports = [
    ../home.nix
  ];

  environment.systemPackages =
    with pkgs; [
    ];

  system.defaults = {
    dock = {
      autohide = true;
      autohide-delay = "0.0";
      autohide-time-modifier = "0.0";
      minimize-to-application = true;
      mru-spaces = false;
      orientation = "bottom";
      show-recents = false;
      tilesize = 64;
    };

    screencapture.location = "${builtins.getEnv ("HOME")}/Desktop/Screenshots";

    finder = {
      AppleShowAllExtensions = true;
      _FXShowPosixPathInTitle = true;
      FXEnableExtensionChangeWarning = false;
    };

    trackpad = {
      Clicking = true;
    };

    NSGlobalDomain._HIHideMenuBar = false;
  };

  fonts = {
    enableFontDir = true;
    fonts = with pkgs; [
      (nerdfonts.override { fonts = [ "FiraCode" ]; })
    ];
  };

  homebrew = {
    brewPrefix = "/opt/homebrew/bin";
    enable = true;
    autoUpdate = false;
    global = {
      brewfile = true;
      noLock = true;
    };

    taps = [
      "homebrew/bundle"
      "homebrew/cask"
      "homebrew/cask-fonts"
      "homebrew/cask-versions"
      "homebrew/core"
      "homebrew/services"
      "ubuntu/microk8s"
    ];

    brews = [
      "hevea"
      "microk8s"
      "yarn"
    ];

    casks = [
      "basictex"
      "brave-browser"
      "kitty"
      "linear-linear"
      "telegram"
    ];
  };

  system.keyboard.enableKeyMapping = true;
  system.keyboard.remapCapsLockToControl = true;

  environment.darwinConfig = "$HOME/.config/nixpkgs/darwin/configuration.nix";

  system.stateVersion = 4;
}
