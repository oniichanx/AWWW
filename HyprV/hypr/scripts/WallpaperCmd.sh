#!/usr/bin/env bash
# Wallpaper command selector (awww preferred, swww fallback)

if command -v awww >/dev/null 2>&1; then
  WWW_CMD="awww"
  WWW_DAEMON="awww-daemon"
  WWW_CACHE_DIR="$HOME/.cache/awww/"
  WWW_DAEMON_ARGS=()
else
  WWW_CMD="swww"
  WWW_DAEMON="swww-daemon"
  WWW_CACHE_DIR="$HOME/.cache/swww/"
  WWW_DAEMON_ARGS=(--format xrgb)
fi

export WWW_CMD WWW_DAEMON WWW_CACHE_DIR