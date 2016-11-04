#!/bin/bash

branch=$1
message=$2
message_default="Debugging $branch"
origin_branch="origin $branch"


if [ -z "$1"]
	then echo  -e "Invalid arguments.\nThe correct syntax is: ./upload-changes BRANCHNAME [COMMITMESSAGE]"; exit
fi

if [ -z "$2" ]
	then message=$message_default
fi

echo -e "\nStaging changes..."
git status
git add .

echo -e "\nCommitting changes..."
git commit -m "$message"

echo -e "\nPushing changes..."
git push $origin_branch