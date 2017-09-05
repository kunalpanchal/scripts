#!/bin/bash

# update the user/company and the repos that are to be backedup

declare user_or_company="kunalpanchal"
declare -a repos=("py" "_" "code" "javascript-algorithms" "js" "node-api-generator" "kunalpanchal.github.io" "BasicsCpp" "java"
    "Outgrow-liveCalcs" "og-cheatbook"  "crx-whatsapp-share" "kunalpanchal-node" "football"
"sitaby-android" "AmIRooted" "disguised-encrypter")

# declare user_or_company="venturepact"
# declare -a repos=("og-build" "Outgrow-frontend" "Outgrow-backend" "og-admin")

# CONSTS
declare origin="https://github.com"
declare gitUrl="${origin}/${user_or_company}";
declare directory="git-backup-${user_or_company}"

if [ ! -d "${directory}" ]; then
    printf "Creating directory \"%s\"\n" "$directory"
    mkdir "${directory}"
fi

cd "${directory}" || exit
echo

# Itterate the repos and clone/pull every repo
for repo in "${repos[@]}"; do
    if [ -d "${repo}" ]; then
        echo "${repo} exists.Executing \"git pull\"";
        cd "${repo}" || exit
        git add .
        git stash save "randomU3UpSuWXM8zpuTJuMZGytoken"
        git pull
        if [ ! -z "$(git stash list | grep randomU3UpSuWXM8zpuTJuMZGytoken)" ];then
            git stash pop
        fi
        cd ..
    else
        echo cloning "${gitUrl}/${repo}";
        git clone "${gitUrl}/${repo}"
    fi
    printf "\n____________________________________________________\n\n"
done
