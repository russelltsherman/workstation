{ pkgs, ... }:

{

  programs.taskwarrior = {
    enable = true;
  };

}

# programs.taskwarrior.enable
# Whether to enable Task Warrior.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/taskwarrior.nix>
# programs.taskwarrior.colorTheme
# Either one of the default provided theme as string, or a path to a theme configuration file.

# Type: null or string or path

# Default: null

# Example: "dark-blue-256"

# Declared by:

# <home-manager/modules/programs/taskwarrior.nix>
# programs.taskwarrior.config
# Key-value configuration written to ~/.taskrc.

# Type: attribute set of anythings

# Default: { }

# Example:

# {
#   confirmation = false;
#   report.minimal.filter = "status:pending";
#   report.active.columns = [ "id" "start" "entry.age" "priority" "project" "due" "description" ];
#   report.active.labels  = [ "ID" "Started" "Age" "Priority" "Project" "Due" "Description" ];
#   taskd = {
#     certificate = "/path/to/cert";
#     key = "/path/to/key";
#     ca = "/path/to/ca";
#     server = "host.domain:53589";
#     credentials = "Org/First Last/cf31f287-ee9e-43a8-843e-e8bbd5de4294";
#   };
# }
# Declared by:

# <home-manager/modules/programs/taskwarrior.nix>
# programs.taskwarrior.dataLocation
# Location where Task Warrior will store its data.

# Home Manager will attempt to create this directory.

# Type: string

# Default: "\$XDG_DATA_HOME/task"

# Declared by:

# <home-manager/modules/programs/taskwarrior.nix>
# programs.taskwarrior.extraConfig
# Additional content written at the end of ~/.taskrc.

# Type: strings concatenated with "\n"

# Default: ""

# Declared by:

# <home-manager/modules/programs/taskwarrior.nix>
