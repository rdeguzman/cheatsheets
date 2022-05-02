# Python CheatSheet

## Virtual Environment

Similar to rvm. Need to add venv or .venv to gitignore

	% python3 -m venv venv
	% source venv/bin/activate
	
You will then see (venv) activated
	
	(venv) rupsmbp-lc:~/Projects/pipeline[PIP-396-qld-scheme-links]%

	(venv) rupsmbp-lc:~/Projects/pipeline[PIP-396-qld-scheme-links]% which python
	/Users/rupert/Projects/pipeline/venv/bin/python
	
	(venv) rupsmbp-lc:~/Projects/pipeline[PIP-396-qld-scheme-links]% which python3
	/Users/rupert/Projects/pipeline/venv/bin/python3
	
	(venv) rupsmbp-lc:~/Projects/pipeline[PIP-396-qld-scheme-links]% which pip3
	/Users/rupert/Projects/pipeline/venv/bin/pip3
	
	(venv) rupsmbp-lc:~/Projects/pipeline[PIP-396-qld-scheme-links]% pip3 install -r requirements.txt