{ unstable, ... }:
{
  stylix = {
    enable = true;
    base16Scheme = "${unstable.base16-schemes}/share/themes/rose-pine.yaml";
    image = unstable.lib.path.append ../../home "/programs/stylix/wallpapers/flake.png";
    fonts = {
      serif = {
        package = unstable.dejavu_fonts;
        name = "DejaVu Serif";
      };

      sansSerif = {
        package = unstable.dejavu_fonts;
        name = "DejaVu Sans";
      };

      monospace = {
        package = unstable.nerd-fonts.jetbrains-mono;
        name = "JetBrains Mono Nerd Font";
      };
    };
  };
}
