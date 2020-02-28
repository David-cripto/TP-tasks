#!/bin/bash

way=$1
expansion=$2
name_folder=$3
name_archive=$4

mkdir $name_folder
find $way -name "*.$expansion" -exec cp --backup=numbered {} $name_folder \;
tar -czf $name_archive $name_folder
echo "done"
