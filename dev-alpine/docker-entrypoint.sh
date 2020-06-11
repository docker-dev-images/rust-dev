#!/bin/bash

if [[ -v project_name ]]; then
    cd /projects
    if [ -d "$project_name" ]; then
        echo
        echo "Could not create cargo project as a $project_name directory already exists."
        echo
    else
        cargo new $project_name
    fi
    chown -R 1000:1000 $project_name
    cd $project_name
fi

/bin/sh