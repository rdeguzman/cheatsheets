# Jenkins

## Bash script for a git post-receive Jenkins WebHook
	#Script below will only trigger a remote job 
	while read oldrev newrev refname
	do
	    branch=$(git rev-parse --symbolic --abbrev-ref $refname)
	    if [ "master" == "$branch" ]; then
	        echo "Trigger iris-deploy-staging in Jenkins"
	        curl --silent --show-error "http://ciubuntu.datalink.loc:8080/job/iris-deploy-staging/build?token=buildme"
	    elif [ "develop" == "$branch" ]; then
	        echo "Trigger iris-test in Jenkins"
	        curl --silent --show-error "http://ciubuntu.datalink.loc:8080/job/iris-test/build?token=buildme"
	    fi
	done