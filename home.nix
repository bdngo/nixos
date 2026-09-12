{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
  ];

  programs.bat = {
    enable = true;
    config = {
      theme-light = "Solarized (light)";
      theme-dark = "Solarized (dark)";
    };
  };

  programs.eza = {
    enable = true;
    icons = "auto";
  };

  programs.discord.enable = true;

  programs.fish.enable = true;

  programs.git = {
    enable = true;
    settings.user = {
      name = "Bryan Ngo";
      email = "jbnknn@gmail.com";
    };
    settings.init.defaultBranch = "main";
  };

  programs.joplin-desktop.enable = true;

  programs.keepassxc = {
    enable = true;
  };

  programs.kitty = {
    enable = true;
    autoThemeFiles = {
      dark = "selenized-dark";
      light = "selenized-light";
      noPreference = "selenized-dark";
    };
    font.name = "FiraCode Nerd Font Mono";
    settings = {
      shell = "fish -l";
      editor = "nvim";
    };
  };

  programs.uv = {
    enable = true;
    settings = {
      pip.python = "3.13";
      python-downloads = "never";
    };
  };

  services.kdeconnect.enable = true;

  services.syncthing.enable = true;

  home.stateVersion = "26.05";
}
