#!/bin/bash

echo "Clean out old db"
echo

rm x86_64/noobie-repo*

echo
echo "Run repo-add"
echo 

repo-add x86_64/noobie-repo.db.tar.gz x86_64/*.pkg.tar.zst

echo "####################################"
echo "Repo Updated!!"
echo "####################################"



# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull

echo "Deleting the work folder if one exists"
[ -d work ] && rm -rf work

# Below command will backup everything inside the project folder
git add --all .

# Give a comment to the commit if you want
echo "####################################"
echo "Write your commit comment!"
echo "####################################"

input="update"
# Committing to the local repository with a message containing the commit text

#git commit -m "$input"


#read input

# Committing to the local repository with a message containing the time details and commit text

git commit -m "$input"

# Push the local files to github

git push -u origin master


echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
