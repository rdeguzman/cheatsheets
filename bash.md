# Bash

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

