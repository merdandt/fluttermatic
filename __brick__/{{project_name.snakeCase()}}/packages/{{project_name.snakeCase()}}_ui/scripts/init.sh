#!/bin/bash

log() {
  echo "$(date +'%Y-%m-%d %H:%M:%S') - $1"
}

log "Starting initialization for UI package"

# Determine the script's directory
script_file="$(readlink -f -- "$0")"
scripts_dir="$(dirname -- "$script_file")"
project_dir="$(dirname -- "$scripts_dir")"

log "Script file: $script_file"
log "Scripts directory: $scripts_dir"
log "Project directory: $project_dir"

# Run gen_assets.sh
log "Running gen_assets.sh..."
if "${scripts_dir}/gen_assets.sh"; then
  log "gen_assets.sh completed successfully."
else
  log "gen_assets.sh failed."
  exit 1
fi

# Navigate to the gallery directory and run flutter pub get
log "Running pub get in gallery."
cd "${project_dir}/gallery" || { log "Failed to change directory to ${project_dir}/gallery"; exit 1; }

if flutter pub get; then
  log "flutter pub get completed successfully."
else
  log "flutter pub get failed."
  exit 1
fi

log "UI package initialization completed."
