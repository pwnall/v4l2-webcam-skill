#!/bin/bash
set -eu

# TODO: Replace with the webcam's video source.
devfs_path=/dev/video0

# Usage: change_setting <SETTING_NAME> <SETTING_VALUE>
change_setting() {
  v4l2-ctl --device "$devfs_path" --set-ctrl "$1=$2"
}

# Phase 1: Disable automated settings, so the manual settings remain in effect.

# TODO: Replace the examples below with settings obtained from v4l2-ctl.

# Type: bool.
# Status: disabling automated adjustments.
change_setting "focus_automatic_continuous" 0

# Type: menu. Range: min=0 max=3. 1: Manual Mode
# Status: disabling automated adjustments.
change_setting "auto_exposure" 1

# Phase 2: Configure manual settings.

# TODO: Replace the examples below with settings obtained from v4l2-ctl.

# Type: int. Range: min=3 max=2047 step=1.
# Status: not calibrated.
change_setting "exposure_time_absolute" 100

# Type: int. Range: min=0 max=255 step=5.
# Status: not calibrated.
change_setting "focus_absolute" 10
