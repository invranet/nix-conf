{ unstable, ... }:
let
  pkgs = unstable;
in
{
  stylix.targets.helix.enable = false;

  programs.helix = {
    enable = true;
    defaultEditor = true;

    settings = {
      theme = "rose_pine";
      editor = {
        line-number = "relative";
        color-modes = true;
        bufferline = "multiple";
        scrolloff = 100;
        mouse = false;
        popup-border = "all";
        end-of-line-diagnostics = "hint";
        cursor-shape.insert = "bar";
        inline-diagnostics.cursor-line = "warning";
        insert-final-newline = false;
        statusline = {
          left = [
            "mode"
            "file-modification-indicator"
            "spinner"
          ];
          center = [ "file-name" ];
          right = [
            "diagnostics"
            "file-type"
            "file-encoding"
            "file-line-ending"
          ];
        };
        lsp = {
          display-inlay-hints = true;
          display-progress-messages = true;
        };
        indent-guides = {
          render = true;
          character = "╎";
          skip-levels = 1;
        };
      };
      keys = {
        normal = {
          A-r = ":config-reload";
          space = {
            space = "@<space>f";
            w = ":w!";
            q = ":q";
          };
        };
      };
    };
    extraPackages = with pkgs; [
      nil
      nixd
      marksman
      markdownlint-cli2
      bash-language-server
    ];
  };
}
