#!/usr/bin/env bash

# Andre Augusto Giannotti Scota (https://sites.google.com/view/a2gs/)

# Script exit if a command fails:
#set -e

# Script exit if a referenced variable is not declared:
#set -u

# If one command in a pipeline fails, its exit code will be returned as the result of the whole pipeline:
#set -o pipefail

# Activate tracing:
#set -x

echo 'Creating sample ...'
echo './file1_xargs.text' > xargs_sample.text
echo './file2_xargs.text' >> xargs_sample.text
echo './file3_xargs.text' >> xargs_sample.text
echo './file4_xargs.text' >> xargs_sample.text
ls -l
echo "Sample' content:"
cat xargs_sample.text
echo

echo '--- Running xargs sample ------------------------------'
cat xargs_sample.text | xargs touch
ls -l
cat xargs_sample.text | xargs rm -rf
ls -l
echo '--- End -----------------------------------------------'

rm -rf ./xargs_sample.text
