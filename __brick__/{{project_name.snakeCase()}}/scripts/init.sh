#!/bin/bash

# Enable proper error handling
set -o pipefail

log() {
  echo "$(date +'%Y-%m-%d %H:%M:%S') - $1"
}

error() {
  echo "$(date +'%Y-%m-%d %H:%M:%S') - ERROR: $1" >&2
}

warn() {
  echo "$(date +'%Y-%m-%d %H:%M:%S') - WARNING: $1" >&2
}

# Set default values
FLUTTER_VERSION=${FLUTTER_VERSION:-"3.19.4"}
PROJECT_NAME=${PROJECT_NAME:-$(basename $(pwd))}

log "Starting initialization script."
log "Flutter version: ${FLUTTER_VERSION}"
log "Project name: ${PROJECT_NAME}"

# Determine script and project directories
script_file="$(readlink -f -- "$0" 2>/dev/null || realpath "$0" 2>/dev/null || echo "$0")"
scripts_dir="$(dirname -- "$script_file")"
project_dir="$(dirname -- "$scripts_dir")"

log "Script file: $script_file"
log "Scripts directory: $scripts_dir"
log "Project directory: $project_dir"

# Change to project directory
log "Changing directory to project directory: ${project_dir}"
cd "${project_dir}" || { error "Failed to change directory to ${project_dir}"; exit 1; }

# Create .fvm directory and config directly
mkdir -p "$project_dir/.fvm" 2>/dev/null
cat > "$project_dir/.fvm/fvm_config.json" << EOF
{
  "flutterSdkVersion": "$FLUTTER_VERSION",
  "flavors": {}
}
EOF
log "FVM configuration file created."

# Check FVM installation
if ! command -v fvm >/dev/null 2>&1; then
  log "FVM not found, installing FVM."
  dart pub global activate fvm
  
  # Add to PATH if not already there
  if ! command -v fvm >/dev/null 2>&1; then
    export PATH="$HOME/.pub-cache/bin:$PATH"
    log "Added ~/.pub-cache/bin to PATH"
  fi
  
  if ! command -v fvm >/dev/null 2>&1; then
    error "FVM installation failed. Will proceed with system Flutter."
  else
    log "FVM installed successfully."
  fi
else
  log "FVM found in path."
fi

# Use a direct approach to manage FVM versions
handle_flutter_version() {
  local required_version="$1"
  
  log "Setting up Flutter version $required_version"
  
  # First, check if this version is already installed by FVM
  local fvm_version_path="$HOME/fvm/versions/$required_version"
  if [ ! -d "$fvm_version_path" ]; then
    log "Installing Flutter version $required_version with FVM"
    fvm install "$required_version"
    
    # Check if installation succeeded
    if [ ! -d "$fvm_version_path" ]; then
      warn "FVM installation of Flutter $required_version may have failed"
    else
      log "Flutter version $required_version installed successfully"
    fi
  else
    log "Flutter version $required_version is already installed"
  fi
  
  # Now directly modify PATH to prioritize the correct Flutter version
  # This works around FVM path conflicts
  if [ -d "$fvm_version_path/bin" ]; then
    export PATH="$fvm_version_path/bin:$PATH"
    log "Added $fvm_version_path/bin to beginning of PATH"
    log "Current flutter path: $(which flutter)"
    log "Current flutter version: $(flutter --version | head -n 1)"
  else
    warn "Could not find bin directory for Flutter $required_version"
  fi
  
  # Set up FVM project link
  fvm use "$required_version" || true
  
  # Verify the correct version is being used
  if command -v flutter >/dev/null 2>&1; then
    local current_version=$(flutter --version | head -n 1 | grep -o '[0-9]\+\.[0-9]\+\.[0-9]\+')
    if [ "$current_version" = "$required_version" ]; then
      log "Successfully set up Flutter $required_version"
      return 0
    else
      warn "Flutter version mismatch: using $current_version instead of $required_version"
      # Continue anyway
    fi
  else
    warn "Flutter not found in PATH after setup"
  fi
  
  return 0
}

# Set up the correct Flutter version
handle_flutter_version "$FLUTTER_VERSION"

# Initialize Git repository if not already a Git repo
if [ ! -d .git ]; then
  log "Initializing new Git repository."
  git init -b main || git init
  git add .
  git commit -m "Initial commit"
  log "Git repository initialized."
else
  log "Git repository already initialized."
fi

# Set up Git Flow
if ! command -v git-flow >/dev/null 2>&1 && command -v brew >/dev/null 2>&1; then
  log "git-flow not found, installing git-flow."
  brew install git-flow-avh || warn "Failed to install git-flow"
fi

if command -v git-flow >/dev/null 2>&1; then
  log "Setting up Git Flow."
  git flow init -d || warn "Failed to initialize git-flow"
else
  warn "git-flow not available, skipping Git Flow initialization"
fi

# Run pub get
log "Running pub get..."
flutter pub get || warn "Failed to run flutter pub get"

# Set executable permissions for all scripts
find "${project_dir}" -name "*.sh" -exec chmod +x {} \; 2>/dev/null
log "Set executable permissions for all scripts"

# Run additional setup scripts
if [ -f "${project_dir}/scripts/gen_code.sh" ]; then
  log "Running code generation..."
  "${project_dir}/scripts/gen_code.sh" rewrite || warn "Code generation failed"
fi

log "Project initialization completed successfully!"
echo ""
echo "======================================================"
echo "Flutter version in use: $(flutter --version | head -n 1)"
echo "Dart version: $(dart --version)"
echo "======================================================"
echo ""
log "Your Flutter project is ready for development."