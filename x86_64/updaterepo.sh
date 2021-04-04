#!/bin/bash

rm noobie-repo*


echo "repo-add"
#repo-add -s -n -R arcolinux_repo.db.tar.gz *.pkg.tar.xz
repo-add -n -R noobie-repo.db.tar.gz *.pkg.tar.zst
#sleep 8
cp -f noobie-repo.db.tar.gz noobie-repo.db

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
