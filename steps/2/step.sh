#!/bin/sh

rm -rf ./main.go > /dev/null 2>&1
rm -rf ./assets > /dev/null 2>&1

git checkout ${MAIN_BRANCH}

cp $CWD/main.go main.go
cp -R $CWD/assets assets

git add main.go assets > /dev/null 2>&1
git commit -m"feat: added colors" > /dev/null 2>&1
git push $ORIGIN $MAIN_BRANCH --force  > /dev/null 2>&1

