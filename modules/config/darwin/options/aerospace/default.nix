{
  pkgs,
  ...
}:
let
  gaps = 6;
in
{
  imports = [
    ./sketchybar.nix  
  ];
  
  services.aerospace = {
    enable = true;

    settings = {
      enable-normalization-flatten-containers = true;
      automatically-unhide-macos-hidden-apps = true;
      enable-normalization-opposite-orientation-for-nested-containers = true;
      accordion-padding = 30;
      default-root-container-layout = "tiles";
      default-root-container-orientation = "auto";

      gaps = {
        outer.left = gaps;
        outer.bottom = gaps;
        outer.top = gaps;
        outer.right = gaps;

        inner.vertical = gaps;
        inner.horizontal = gaps;
      };

      exec-on-workspace-change = [
        "/bin/bash"
        "-c"
        "sketchybar --trigger aerospace_workspace_change FOCUSED_WORKSPACE=$AEROSPACE_FOCUSED_WORKSPACE"
      ];

      mode.main.binding = {
        alt-h = "focus left";
        alt-j = "focus down";
        alt-k = "focus up";
        alt-l = "focus right";

        cmd-1 = "workspace 1";
        cmd-2 = "workspace 2";
        cmd-3 = "workspace 3";
        cmd-4 = "workspace 4";
        cmd-5 = "workspace 5";
        cmd-6 = "workspace 6";
        cmd-7 = "workspace 7";
        cmd-8 = "workspace 8";
        cmd-9 = "workspace 9";

        cmd-shift-1 = [
          "move-node-to-workspace 1"
          "workspace 1"
        ];
        cmd-shift-2 = [
          "move-node-to-workspace 2"
          "workspace 2"
        ];
        cmd-shift-3 = [
          "move-node-to-workspace 3"
          "workspace 3"
        ];
        cmd-shift-4 = [
          "move-node-to-workspace 4"
          "workspace 4"
        ];
        cmd-shift-5 = [
          "move-node-to-workspace 5"
          "workspace 5"
        ];
        cmd-shift-6 = [
          "move-node-to-workspace 6"
          "workspace 6"
        ];
        cmd-shift-7 = [
          "move-node-to-workspace 7"
          "workspace 7"
        ];
        cmd-shift-8 = [
          "move-node-to-workspace 8"
          "workspace 8"
        ];
        cmd-shift-9 = [
          "move-node-to-workspace 9"
          "workspace 9"
        ];

        alt-enter = "macos-native-fullscreen";
        cmd-enter = [
          "exec-and-forget open -n ${pkgs.ghostty-bin}/Applications/Ghostty.app"
          "mode main"
        ];
        cmd-esc = [
          "reload-config"
          "mode main"
        ];
        alt-space = [
          "layout floating tiling"
          "mode main"
        ];
        cmd-h = [ ];
        cmd-alt-h = [ ];
      };
    };
  };

  # Disable default menubar, dont worry about yabai here, it will NOT intefere with AeroSpace (iThink)
  services.yabai = {
    enable = true;
    extraConfig = ''
      yabai -m config menubar_opacity 0.0
    '';
  };
}
