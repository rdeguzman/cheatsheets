Git
---

### Workflow
	%git checkout -b myfeature master
	...
	work on myfeature
	push to myfeature
	...
	%git checkout master
	Switched to branch 'master'

	% git pull --rebase 	#alias to gplr	
    First, rewinding head to replay your work on top of it...
	Fast-forwarded master to 4a1dea608d999568ccc32fd7ee4e6b57c4bfcb0a.
	
The --no-ff flag causes the merge to always create a new commit object, even if the merge could be performed with a fast-forward.
	
	%git merge --no-ff myfeature
	Updating ea1b82a..05e9557
    (Summary of changes)

	%git branch -d myfeature
	Deleted branch myfeature (was 05e9557).
	
	%git push origin master
	
	

    
