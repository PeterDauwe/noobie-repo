#!/bin/bash

# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull

# Below command will backup everything inside the project folder
git add -u
git add --all .

# Give a comment to the commit if you want
echo "####################################"
echo "Write your commit comment!"
echo "####################################"

#read input
input="update"
# Committing to the local repository with a message containing the commit text

git commit -m "$input"

# Push the local files to github

git push --force -u origin master


echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
