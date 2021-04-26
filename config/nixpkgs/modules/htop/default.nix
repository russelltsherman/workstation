{ pkgs, ... }:

{

  programs.htop = {
    enable = true;
  };

}

# programs.htop.enable
# Whether to enable htop.

# Type: boolean

# Default: false

# Example: true

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.enableMouse
# Enable mouse support.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.accountGuestInCpuMeter
# Add guest time in CPU meter percentage.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.colorScheme
# Which color scheme to use.

# Type: one of 0, 1, 2, 3, 4, 5, 6

# Default: 0

# Example: 6

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.cpuCountFromZero
# Count CPUs from 0 instead of 1.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.delay
# Set the delay between updates, in tenths of seconds.

# Type: signed integer

# Default: 15

# Example: 2

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.detailedCpuTime
# Detailed CPU time (System/IO-Wait/Hard-IRQ/Soft-IRQ/Steal/Guest).

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.fields
# Active fields shown in the table.

# Type: list of one of "CGROUP", "CMAJFLT", "CMINFLT", "CNCLWB", "COMM", "CSTIME", "CTID", "CUTIME", "IO_PRIORITY", "IO_RATE", "IO_READ_RATE", "IO_WRITE_RATE", "MAJFLT", "MINFLT", "M_DRS", "M_DT", "M_LRS", "M_PSS", "M_PSSWP", "M_RESIDENT", "M_SHARE", "M_SIZE", "M_SWAP", "M_TRS", "NICE", "NLWP", "OOM", "PERCENT_CPU", "PERCENT_MEM", "PGRP", "PID", "PPID", "PRIORITY", "PROCESSOR", "RBYTES", "RCHAR", "SESSION", "STARTTIME", "STATE", "STIME", "ST_UID", "SYSCR", "SYSCW", "TGID", "TIME", "TPGID", "TTY_NR", "USER", "UTIME", "VPID", "VXID", "WBYTES", "WCHAR"s

# Default: [ "PID" "USER" "PRIORITY" "NICE" "M_SIZE" "M_RESIDENT" "M_SHARE" "STATE" "PERCENT_CPU" "PERCENT_MEM" "TIME" "COMM" ]

# Example: [ "PID" "USER" "PRIORITY" "PERCENT_CPU" "M_RESIDENT" "PERCENT_MEM" "TIME" "COMM" ]

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.headerMargin
# Leave a margin around header.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.hideKernelThreads
# Hide kernel threads.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.hideThreads
# Hide threads.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.hideUserlandThreads
# Hide userland process threads.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.highlightBaseName
# Highlight program “basename”.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.highlightMegabytes
# Highlight large numbers in memory counters.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.highlightThreads
# Display threads in a different color.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.meters
# Meters shown in the header.

# Type: submodule

# Default: { left = [ "AllCPUs" "Memory" "Swap" ] ; right = [ "Tasks" "LoadAverage" "Uptime" ] ; }

# Example: { left = [ "Memory" "CPU" "LeftCPUs2" "RightCPUs2" { kind = "CPU"; mode = 3; } ] ; right = [ { kind = "Clock"; mode = 4; } "Uptime" "Tasks" "LoadAverage" { kind = "Battery"; mode = 1; } ] ; }

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.meters.left
# Meters shown in the left header.

# Type: list of submodule or one of "AllCPUs", "AllCPUs2", "AllCPUs4", "Battery", "Blank", "CPU", "CPU(1)", "CPU(2)", "CPU(3)", "CPU(4)", "CPU(5)", "CPU(6)", "CPU(7)", "CPU(8)", "CPUs", "Clock", "Hostname", "LeftCPUs", "LeftCPUs2", "LeftCPUs4", "Load", "LoadAverage", "Memory", "PressureStallCPUSome", "PressureStallIOFull", "PressureStallIOSome", "PressureStallMemoryFull", "PressureStallMemorySome", "Right", "RightCPUs", "RightCPUs2", "RightCPUs4", "Swap", "Tasks", "Uptime", "ZFSARC", "ZFSCARC" convertible to its

# Default: [ "AllCPUs" "Memory" "Swap" ]

# Example: [ "Memory" "LeftCPUs2" "RightCPUs2" { kind = "CPU"; mode = 3; } ]

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.meters.left.*.kind
# What kind of meter.

# Type: one of "AllCPUs", "AllCPUs2", "AllCPUs4", "Battery", "Blank", "CPU", "CPU(1)", "CPU(2)", "CPU(3)", "CPU(4)", "CPU(5)", "CPU(6)", "CPU(7)", "CPU(8)", "CPUs", "Clock", "Hostname", "LeftCPUs", "LeftCPUs2", "LeftCPUs4", "Load", "LoadAverage", "Memory", "PressureStallCPUSome", "PressureStallIOFull", "PressureStallIOSome", "PressureStallMemoryFull", "PressureStallMemorySome", "Right", "RightCPUs", "RightCPUs2", "RightCPUs4", "Swap", "Tasks", "Uptime", "ZFSARC", "ZFSCARC"

# Example: "AllCPUs"

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.meters.left.*.mode
# Which mode the meter should use, one of 1(Bar) 2(Text) 3(Graph) 4(LED).

# Type: one of 1, 2, 3, 4

# Example: 2

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.meters.right
# Meters shown in the right header.

# Type: list of submodule or one of "AllCPUs", "AllCPUs2", "AllCPUs4", "Battery", "Blank", "CPU", "CPU(1)", "CPU(2)", "CPU(3)", "CPU(4)", "CPU(5)", "CPU(6)", "CPU(7)", "CPU(8)", "CPUs", "Clock", "Hostname", "LeftCPUs", "LeftCPUs2", "LeftCPUs4", "Load", "LoadAverage", "Memory", "PressureStallCPUSome", "PressureStallIOFull", "PressureStallIOSome", "PressureStallMemoryFull", "PressureStallMemorySome", "Right", "RightCPUs", "RightCPUs2", "RightCPUs4", "Swap", "Tasks", "Uptime", "ZFSARC", "ZFSCARC" convertible to its

# Default: [ "Tasks" "LoadAverage" "Uptime" ]

# Example: [ { kind = "Clock"; mode = 4; } "Uptime" "Tasks" ]

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.meters.right.*.kind
# What kind of meter.

# Type: one of "AllCPUs", "AllCPUs2", "AllCPUs4", "Battery", "Blank", "CPU", "CPU(1)", "CPU(2)", "CPU(3)", "CPU(4)", "CPU(5)", "CPU(6)", "CPU(7)", "CPU(8)", "CPUs", "Clock", "Hostname", "LeftCPUs", "LeftCPUs2", "LeftCPUs4", "Load", "LoadAverage", "Memory", "PressureStallCPUSome", "PressureStallIOFull", "PressureStallIOSome", "PressureStallMemoryFull", "PressureStallMemorySome", "Right", "RightCPUs", "RightCPUs2", "RightCPUs4", "Swap", "Tasks", "Uptime", "ZFSARC", "ZFSCARC"

# Example: "AllCPUs"

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.meters.right.*.mode
# Which mode the meter should use, one of 1(Bar) 2(Text) 3(Graph) 4(LED).

# Type: one of 1, 2, 3, 4

# Example: 2

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.shadowOtherUsers
# Shadow other users' processes.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.showCpuFrequency
# Show CPU frequency.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.showCpuUsage
# Show CPU usage frequency.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.showProgramPath
# Show program path.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.showThreadNames
# Show custom thread names.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.sortDescending
# Whether to sort descending or not.

# Type: boolean

# Default: true

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.sortKey
# Which field to use for sorting.

# Type: one of "CGROUP", "CMAJFLT", "CMINFLT", "CNCLWB", "COMM", "CSTIME", "CTID", "CUTIME", "IO_PRIORITY", "IO_RATE", "IO_READ_RATE", "IO_WRITE_RATE", "MAJFLT", "MINFLT", "M_DRS", "M_DT", "M_LRS", "M_PSS", "M_PSSWP", "M_RESIDENT", "M_SHARE", "M_SIZE", "M_SWAP", "M_TRS", "NICE", "NLWP", "OOM", "PERCENT_CPU", "PERCENT_MEM", "PGRP", "PID", "PPID", "PRIORITY", "PROCESSOR", "RBYTES", "RCHAR", "SESSION", "STARTTIME", "STATE", "STIME", "ST_UID", "SYSCR", "SYSCW", "TGID", "TIME", "TPGID", "TTY_NR", "USER", "UTIME", "VPID", "VXID", "WBYTES", "WCHAR"

# Default: "PERCENT_CPU"

# Example: "TIME"

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.treeView
# Tree view.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.updateProcessNames
# Update process names on every refresh.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/htop.nix>
# programs.htop.vimMode
# Vim key bindings.

# Type: boolean

# Default: false

# Declared by:

# <home-manager/modules/programs/htop.nix>
