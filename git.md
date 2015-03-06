---
layout: default
---
Git Cheatsheet
---

### Normal Workflow

1. Branch out and commit your changes
	
		%git checkout -b myfeature master
		...
		work on myfeature locally
		…
		push myfeature to origin myfeature if you want to track remotely
		%git push origin myfeature
		...
		
2.  Placing your features changes on top of master.
		
		%git checkout master
		Switched to branch 'master'

		%gplr #git pull --rebase
		First, rewinding head to replay your work on top of it...
		Fast-forwarded master to 4a1dea608d999568ccc32fd7ee4e6b57c4bfcb0a.
		
		%git rebase myfeature #suggested by colleague
		
3.  [optional] Merge ONLY if the feature branch has significant changes.

	Specify --no-ff flag causes the merge to always create a new commit object, even if the merge could be performed with a fast-forward. 

	Always, specify a good commit message when merging, i.e ('Merge authentication feature to master')
	
		%git merge -m "Merge spatial features to master. Your message goes here" --no-ff myfeature
		Updating ea1b82a..05e9557
    	(Summary of changes)
    	
4. Push changes to origin master    	
	
		%git push origin master

5. Cleanup
		
		%git branch -d myfeature
		Deleted branch myfeature (was 05e9557).
	
### Bring changes from master to your branch
	% gco feature
	.. work on feature .. hack .. push
	% git fetch origin master
	% git merge master #merges master to your branch

### Reset HARD
Forget everything on my current local branch and make it exactly the same as origin/master
	
	% git reset --hard origin/master	
	
	

    
