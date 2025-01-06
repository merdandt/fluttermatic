#!/bin/bash

if [[ ! $(which fvm) ]]; then 
    echo "fvm not found."
    echo "run \"scripts/init.sh\" to install it first."
    exit 0
fi

script_file="$(readlink -f -- $0)"
script_dir="$(dirname -- $script_file)"
project_dir="$(dirname -- $script_dir)"


cd $project_dir
fvm flutter pub get

# for folder in $project_dir/packages/*
# do
#     if [[ -f "$folder/pubspec.yaml" ]]; then
#         cd $folder
#         fvm flutter pub get 
#     else
#         echo "skip "$folder" folder, does not contain pubspec file"
#     fi
# done
