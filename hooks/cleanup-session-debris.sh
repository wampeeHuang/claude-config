#!/usr/bin/env bash
# Minimal session cleanup — removes stale shell snapshot files older than 1 hour
SNAPSHOT_DIR="$HOME/.claude/shell-snapshots"
if [ -d "$SNAPSHOT_DIR" ]; then
  find "$SNAPSHOT_DIR" -name "snapshot-*.sh" -mmin +60 -delete 2>/dev/null
fi
