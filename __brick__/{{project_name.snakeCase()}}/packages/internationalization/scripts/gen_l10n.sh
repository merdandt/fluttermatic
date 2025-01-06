#!/bin/bash

if [[ ! $(which fvm) ]]; then 
    echo "fvm not found."
    echo "aborting"
    exit 0
fi

script_file="$(readlink -f -- $0)"
script_dir="$(dirname -- $script_file)"
package_dir="$(dirname -- $script_dir)"

echo 'regenerate localization files'
cd $package_dir
fvm	flutter gen-l10n
