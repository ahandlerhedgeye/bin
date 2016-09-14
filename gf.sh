#!/bin/sh
#
# turns the current branch name into hedgeye pivotal ready flow

clear
branch=$(git rev-parse --abbrev-ref HEAD)
finished="[finishes #"$branch"]"
echo $finished
echo $finished | pbcopy

echo "https://www.pivotaltracker.com/n/projects/$PROJECTCODE/stories/"$branch|cut -d'-' -f1
rawurl=$(git remote get-url upstream)
find=":"
replace="/"
result=${rawurl//$find/$replace}
find2=".git"
replace2=""
url=${result//$find2/$replace2}
echo $url| cut -d '@' -f2
