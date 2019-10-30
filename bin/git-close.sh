BRANCH_TO_CLOSE=$(git rev-parse --abbrev-ref HEAD)

git checkout master && git pull && git branch --delete $BRANCH_TO_CLOSE
