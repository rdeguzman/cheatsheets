---
layout: default
---
# Bash Cheatsheet

## Checking arguments

% foo.sh --opt1

	while test $# -gt 0
	do
	    case "$1" in
	        --opt1) echo "option 1"
	            ;;
	        --opt2) echo "option 2"
	            ;;
	        --*) echo "bad option $1"
	            ;;
	        *) echo "argument $1"
	            ;;
	    esac
	    shift
	done

## Functions

	foo () {
		echo "Hello World"
	}

## Loops

### for loop in files

	for file in $files;
  	do
    	echo "$file"
	done

### for loop on array of strings

  	files=( llvm-cpp-4.2 llvm-g++ llvm-g++-4.2 llvm-gcc llvm-gcc-4.2 )
	for file in ${files[@]};
	do
    	echo "Creating symbolic link $file"
    	rm $file
    	ln -s ../$GCC42NAME/bin/$file $file
	done

