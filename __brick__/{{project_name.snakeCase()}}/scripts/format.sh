#!/usr/bin/env bash

if [[ ! $(which fvm) ]]; then 
    echo "fvm not found."
    echo "run \"scripts/init.sh\" to install it first."
    exit 0
fi

script_file="$(readlink -f -- $0)"
scripts_dir="$(dirname -- $script_file)"
project_dir="$(dirname -- $scripts_dir)"

find "${project_dir}" -type f -path "*/lib/*" ! -path '*\/l10n\/*' -name "*.dart" ! -name "*.*.dart" | xargs fvm dart format $file --line-length=80

exit $?