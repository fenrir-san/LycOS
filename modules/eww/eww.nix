{ config, ... }:

{
  programs.eww = {
    enable = true;
    configDir = "${config.home.homeDirectory}/PyrOS/modules/eww/config-eww/";
  };

  # home.file = {
    # ".config/eww" = {
      # source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/PyrOS/modules/eww/config-eww/";
    # };
  # };
}
