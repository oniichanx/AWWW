#!/usr/bin/env bash
# Start wallpaper daemon, preferring awww with swww fallback

SCRIPTSDIR="$HOME/.config/hypr/scripts"
# shellcheck source=/dev/null
. "$SCRIPTSDIR/WallpaperCmd.sh"

if command -v "$WWW_DAEMON" >/dev/null 2>&1 && command -v "$WWW_CMD" >/dev/null 2>&1; then
  "$WWW_DAEMON" "${WWW_DAEMON_ARGS[@]}"
fi