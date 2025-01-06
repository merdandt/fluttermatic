#!/bin/bash

if [[ ! $(which fvm) ]]; then 
    echo "fvm not found."
    echo "run \"scripts/init.sh\" to install it first."
    exit 0
fi

script_file="$(readlink -f -- $0)"
script_dir="$(dirname -- $script_file)"
project_dir="$(dirname -- $script_dir)"

command=$1;
if [[ $1 == "rewrite" ]]; then
    rewrite_flag="--delete-conflicting-outputs"
else 
    rewrite_flag=""
fi


for folder in $project_dir/packages/*
do
    pubspec_path="$folder/pubspec.yaml"
    if [ -f $pubspec_path ]  &&  grep -q "build_runner" $pubspec_path ; then 
        echo "run build runner in \"$folder\""
        cd "${folder}"
        fvm dart run build_runner build $rewrite_flag
    else
        echo "skip \"$folder\" folder, does not contain pubspec file with build_runner"
    fi
done

echo "run build runner in \"$project_dir\""
cd $project_dir
fvm dart run build_runner build $rewrite_flag
