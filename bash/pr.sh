token=$GITHUB_PERSONAL_ACCESS_TOKEN
user=`whoami`
owner=`git remote -v | head -1 | cut -f2 | cut -d'/' -f1 | cut -d':' -f2`
repo=`git remote -v | head -1 | cut -f2 | cut -d'/' -f2  | cut -d'.' -f1`
base=$1
if [ -z "$1" ]; then
	base='develop'
fi
head=`git rev-parse --abbrev-ref HEAD`
pr=`curl -X POST -u $user:$token "https://api.github.com/repos/$owner/$repo/pulls" -d '{"title":"'$head'","body":"PR sent via https://github.com/QimatLuo/Setting/blob/master/bash/pr.sh","head":"'$head'","base":"'$base'"}'`
echo $pr
number=`echo $pr | awk -F '"number": ' '{print $2}' | cut -d',' -f1`
curl -X PATCH -u $user:$token "https://api.github.com/repos/$owner/$repo/issues/$number" -d '{"assignees":["'$user'"]}'
curl -X POST -u $user:$token "https://api.github.com/repos/$owner/$repo/pulls/$number/requested_reviewers" -d '{"reviewers":["akiratsai"]}'
