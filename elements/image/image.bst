kind: compose

depends:
  - filename: system/system-base.bst
    type: build
  - filename: compositor/hyprland.bst
    type: build
  - filename: compositor/xdg-desktop-portal-hyprland.bst
    type: build
  - filename: compositor/hyprpaper.bst
    type: build
  - filename: compositor/hyprlock.bst
    type: build
  - filename: compositor/hypridle.bst
    type: build
  - filename: shell/noctalia.bst
    type: build
  - filename: shell/noctalia-greeter.bst
    type: build
  - filename: shell/waybar.bst
    type: build
  - filename: shell/greetd.bst
    type: build
  - filename: shell/tuigreet.bst
    type: build
  - filename: shell/foot.bst
    type: build
  - filename: shell/rofi-wayland.bst
    type: build
