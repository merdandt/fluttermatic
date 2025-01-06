#!/bin/bash

log() {
  echo "$(date +'%Y-%m-%d %H:%M:%S') - $1"
}

log "FLUTTER_VERSION: ${FLUTTER_VERSION}"
log "PROJECT_NAME: ${PROJECT_NAME}"

FLUTTER_VERSION=${FLUTTER_VERSION:-"{{flutter_version}}"}
PROJECT_NAME=${PROJECT_NAME:-"{{project_name}}"}

log "Starting initialization script."

script_file="$(readlink -f -- "$0")"
scripts_dir="$(dirname -- "$script_file")"
project_dir="$(dirname -- "$scripts_file")"

log "Script file: $script_file"
log "Scripts directory: $scripts_dir"
log "Project directory: $project_dir"
log "Flutter version: ${FLUTTER_VERSION}"
log "Project name: ${PROJECT_NAME}"

# Install FVM
log "Checking if Dart is installed."
if command -v dart >/dev/null 2>&1; then 
  log "Dart is installed."
else
  log "Dart not found, please install Dart and add it to the system \$PATH."
  exit 1
fi

log "Checking if FVM is installed."
if command -v fvm >/dev/null 2>&1; then 
  log "FVM found in path, skipping install."
else 
  log "FVM not found, installing FVM."
  dart pub global activate fvm
  
  if ! command -v fvm >/dev/null 2>&1; then 
    log "FVM not found after installation."
    log "Your \$PATH might be missing pub global cache."
    exit 1
  fi
  log "FVM installed successfully."
fi

log "Changing directory to project directory: ${project_dir}."
cd "${project_dir}" || { log "Failed to change directory to ${project_dir}"; exit 1; }

# Check if FVM is installed
if ! command -v fvm >/dev/null 2>&1; then
  log "FVM is not installed. Exiting script."
  exit 1
fi

# Set FVM variables
if [[ -z "${FLUTTER_VERSION}" ]]; then
  log "Flutter version not specified. Set the environment variable 'FLUTTER_VERSION'."
  exit 1
fi
log "Flutter version: ${FLUTTER_VERSION}"

if [[ -z "${PROJECT_NAME}" ]]; then
  log "Project name not specified. Set the environment variable 'PROJECT_NAME'."
  exit 1
fi
log "Project name: ${PROJECT_NAME}"

log "Installing Flutter version ${FLUTTER_VERSION} with FVM."
if ! fvm install "${FLUTTER_VERSION}"; then
  log "Failed to install Flutter version ${FLUTTER_VERSION} with FVM."
  exit 1
fi

log "Using Flutter version ${FLUTTER_VERSION} with FVM."
if ! fvm use "${FLUTTER_VERSION}"; then
  log "Failed to use Flutter version ${FLUTTER_VERSION} with FVM."
  exit 1
fi

# Initialize Git repository if not already a Git repo
if [ ! -d .git ]; then
  log "Initializing new Git repository."
  git init -b main
  git add .
  git commit -m "Initial commit"
else
  log "Git repository already initialized."
fi

# Set up Git Flow
log "Setting up Git Flow."
if ! command -v git-flow >/dev/null 2>&1; then
  log "git-flow not found, installing git-flow."
  brew install git-flow-avh
fi

git flow init -d


log "Initialization script completed."
