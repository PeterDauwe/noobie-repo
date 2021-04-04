
echo "Clean out old db"
echo

rm noobie-repo*

echo
echo "Run repo-add"
echo 

repo-add noobie-repo.db.tar.gz *.pkg.tar.zst

echo "####################################"
echo "Repo Updated!!"
echo "####################################"

cd ../

./git.sh