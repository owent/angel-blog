#!/bin/bash

cd "$(dirname $0)";

which hugo;

if [ 0 -eq $? ]; then
    hugo;

    if [ 0 -ne $? ]; then
        echo "Something error, exit with $?";
        exit $?;
    fi
fi

rsync -avz --force --delete public/ angel@angel.owent.net:/home/website/angel_blog
