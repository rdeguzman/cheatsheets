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
	
### Submodules
Add a submodule to a project

	git submodule add https://github.com/rdeguzman/cheatsheets
	
Update a submodule within a project

	git submodule update --remote cheatsheets		
	
### Squash
  
Do the squashing on a separate branch:
  
    git checkout -b squashed_feature
    git rebase -i master
  
    pick fda59df commit 1
    pick x536897 commit 2
    pick c01a668 commit 3
    
Each line represents a commit (in chronological order, the latest commit will be at the bottom).  

This means, you take the first commit, and squash the following onto it.
    
    pick fda59df commit 1
    squash x536897 commit 2
    squash c01a668 commit 3
    
You can now merge your feature as a single commit into the master:    
    
    git checkout master
    git merge squashed_feature
    
### Tags

Delete a tag from Remote repo

    git tag -d login1
    git tag -d login2
    git push origin :refs/tags/login1
    git push origin :refs/tags/login2

### Delete a branch

	% git branch -d mapview
	error: The branch 'mapview' is not fully merged.
	If you are sure you want to delete it, run 'git branch -D mapview'.
	% git branch -D mapview
	
To remove the branch remotely

	git push origin --delete mapview
	
 

    
