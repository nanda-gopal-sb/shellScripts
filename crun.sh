#!/bin/bash

# Check if a CPP file name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <cpp_file>"
    exit 1
fi

# Get the CPP file name from the argument
cpp_file=$1

# Compile the CPP file into an executable
g++ -o ${cpp_file%.cpp} ${cpp_file}

# Check if the compilation was successful
if [ $? -ne 0 ]; then
    echo "Compilation failed"
    exit 1
fi

# Execute the compiled executable
./${cpp_file%.cpp}