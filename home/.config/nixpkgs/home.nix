{ config, pkgs, ...}:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" "repl-flake" ];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnsupportedSystem = true;
  nixpkgs.config.trustedUsers = ["root" "adam" "adamharris" "Adam"];
  nixpkgs.config.extraNixPath = ["nixpkgs=flake:nixpkgs"];

  services.nix-daemon.enable = true;

  networking.hostName = "cerritosh";

  environment.systemPackages =
    with pkgs; [
      # bazel
      # docker
      # openssl
      # ngrok
      (nerdfonts.override { fonts = [ "FiraCode" ]; })
      autoconf
      automake
      # awscli
      bat
      cloc
      clojure
      cmake
      go
      colordiff
      coreutils
      ctags
      direnv
      exa
      fnm
      fzf
      gettext
      gifsicle
      gist
      git
      git-extras
      gnupg
      htop
      inetutils
      jq
      llvm
      minio
      mkcert
      nodejs
      opam
      python38
      ripgrep
      rustup
      tldr
      tmux
      tree
      libsodium
      neovim
      rebar3
      vhs
      vim
      wget
      wireshark
      zsh
    ];
}

