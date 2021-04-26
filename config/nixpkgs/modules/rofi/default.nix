{ pkgs, ... }:

{

  programs.rofi = {
    enable = true;
  };

}

# programs.rofi.enable
# Whether to enable Rofi: A window switcher, application launcher and dmenu replacement.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.package
# Package providing the rofi binary.

# Type: package

# Default: (build of rofi-1.6.1)

# Example:

# pkgs.rofi.override { plugins = [ pkgs.rofi-emoji ]; };
# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.borderWidth
# Border width

# Type: null or signed integer

# Default: null

# Example: 1

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors
# Color scheme settings. Colors can be specified in CSS color formats. This option may become deprecated in the future and therefore the programs.rofi.theme option should be used whenever possible.

# Type: null or submodule

# Default: null

# Example:

# colors = {
#   window = {
#     background = "argb:583a4c54";
#     border = "argb:582a373e";
#     separator = "#c3c6c8";
#   };

#   rows = {
#     normal = {
#       background = "argb:58455a64";
#       foreground = "#fafbfc";
#       backgroundAlt = "argb:58455a64";
#       highlight = {
#         background = "#00bcd4";
#         foreground = "#fafbfc";
#       };
#     };
#   };
# };
# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows
# Rows color settings.

# Type: submodule

# Default: null

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.active
# Active row color settings.

# Type: null or submodule

# Default: null

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.active.background
# Background color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.active.backgroundAlt
# Alternative background color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.active.foreground
# Foreground color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.active.highlight
# Color settings for highlighted row.

# Type: submodule

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.active.highlight.background
# Highlight background color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.active.highlight.foreground
# Highlight foreground color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.normal
# Normal row color settings.

# Type: null or submodule

# Default: null

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.normal.background
# Background color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.normal.backgroundAlt
# Alternative background color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.normal.foreground
# Foreground color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.normal.highlight
# Color settings for highlighted row.

# Type: submodule

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.normal.highlight.background
# Highlight background color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.normal.highlight.foreground
# Highlight foreground color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.urgent
# Urgent row color settings.

# Type: null or submodule

# Default: null

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.urgent.background
# Background color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.urgent.backgroundAlt
# Alternative background color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.urgent.foreground
# Foreground color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.urgent.highlight
# Color settings for highlighted row.

# Type: submodule

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.urgent.highlight.background
# Highlight background color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.rows.urgent.highlight.foreground
# Highlight foreground color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.window
# Window color settings.

# Type: submodule

# Default: null

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.window.background
# Window background color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.window.border
# Window border color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.colors.window.separator
# Separator color

# Type: string

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.configPath
# Path where to put generated configuration file.

# Type: string

# Default: "\$XDG_CONFIG_HOME/rofi/config.rasi"

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.cycle
# Whether to cycle through the results list.

# Type: null or boolean

# Default: null

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.extraConfig
# Additional configuration to add.

# Type: attribute set of string or signed integer or boolean or Rasi literal string or list of string or signed integer or boolean or Rasi literal stringss or string

# Default: { }

# Example:

# {
#   modi = "drun,emoji,ssh";
#   kb-primary-paste = "Control+V,Shift+Insert";
#   kb-secondary-paste = "Control+v,Insert";
# }
# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.font
# Font to use.

# Type: null or string

# Default: null

# Example: "Droid Sans Mono 14"

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.fullscreen
# Whether to run rofi fullscreen.

# Type: null or boolean

# Default: null

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.lines
# Number of lines

# Type: null or signed integer

# Default: null

# Example: 10

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.location
# The location rofi appears on the screen.

# Type: one of "bottom", "bottom-left", "bottom-right", "center", "left", "right", "top", "top-left", "top-right"

# Default: "center"

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.padding
# Padding

# Type: null or signed integer

# Default: null

# Example: 400

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.pass.enable
# Whether to enable rofi integration with password-store.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/rofi-pass.nix>
# programs.rofi.pass.extraConfig
# Extra configuration to be added at to the rofi-pass config file. Additional examples can be found at https://github.com/carnager/rofi-pass/blob/master/config.example.

# Type: strings concatenated with "\n"

# Default: ""

# Example:

# ''
# URL_field='url'
# USERNAME_field='user'
# AUTOTYPE_field='autotype'
# ''
# Declared by:

# <home-manager/modules/programs/rofi-pass.nix>
# programs.rofi.pass.stores
# Directory roots of your password-stores.

# Type: list of strings

# Default: [ ]

# Declared by:

# <home-manager/modules/programs/rofi-pass.nix>
# programs.rofi.rowHeight
# Row height (in chars)

# Type: null or signed integer

# Default: null

# Example: 1

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.scrollbar
# Whether to show a scrollbar.

# Type: null or boolean

# Default: null

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.separator
# Separator style

# Type: null or one of "none", "dash", "solid"

# Default: null

# Example: "solid"

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.terminal
# Path to the terminal which will be used to run console applications

# Type: null or string

# Default: null

# Example: "\${pkgs.gnome3.gnome_terminal}/bin/gnome-terminal"

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.theme
# Name of theme or path to theme file in rasi format or attribute set with theme configuration. Available named themes can be viewed using the rofi-theme-selector tool.

# Type: null or string or path or attribute set of attribute set of string or signed integer or boolean or Rasi literal string or list of string or signed integer or boolean or Rasi literal stringss or strings

# Default: null

# Example:

# let
#   inherit (config.lib.formats.rasi) mkLiteral;
# in {
#   "*" = {
#     background-color = mkLiteral "#000000";
#     foreground-color = mkLiteral "rgba ( 250, 251, 252, 100 % )";
#     border-color = mkLiteral "#FFFFFF";
#     width = 512;
#   };

#   "#inputbar" = {
#     children = map mkLiteral [ "prompt" "entry" ];
#   };

#   "#textbox-prompt-colon" = {
#     expand = false;
#     str = ":";
#     margin = mkLiteral "0px 0.3em 0em 0em";
#     text-color = mkLiteral "@foreground-color";
#   };
# }
# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.width
# Window width

# Type: null or signed integer

# Default: null

# Example: 100

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.xoffset
# Offset in the x-axis in pixels relative to the chosen location.

# Type: signed integer

# Default: 0

# Declared by:

# <home-manager/modules/programs/rofi.nix>
# programs.rofi.yoffset
# Offset in the y-axis in pixels relative to the chosen location.

# Type: signed integer

# Default: 0

# Declared by:

# <home-manager/modules/programs/rofi.nix>
