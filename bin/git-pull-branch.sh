BRANCH=$(git rev-parse --abbrev-ref HEAD)

git checkout master && git pull && git checkout $BRANCH && git merge master
