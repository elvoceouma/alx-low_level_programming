#!/bin/bash

# List of source files
source_files=$(ls *.c)

# Compile each source file into an object file with the corresponding name
for source_file in $source_files; do
    object_file="${source_file%.c}.o"
    gcc -c "$source_file" -o "$object_file"
done

# Create the static library liball.a from all object files
ar -rc liball.a *.o

# Clean up: remove the temporary object files
rm -f *.o

