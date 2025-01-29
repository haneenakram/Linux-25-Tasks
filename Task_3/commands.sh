#make the folder 
mkdir git_started
#make the git repo
mkdir .git/{objects,refs/heads} -p
#make the HEAD file
touch .git/HEAD
#now we need to make the head file to reference the master in the refs
echo "ref: refs/heads/master" > .git/HEAD
#there is no master yet but HEAD reference it so we need to hash the object and put iit in the master
touch hello.txt
echo "OLA AMONA AND LINUX TEAM, LOVE YOU" > hello.txt
#now hash this file and put it in the objects by flag -w
git hash-object hello.txt -w
#now update the index
git update-index --add --cacheinfo 100644 dce20f8962b398d04d62e6e184b9aa7b0928bbcb hello.txt
#now make the tree
git write-tree
#commit the tree
git commit-tree f15b8d1945adfdda005a3c8ad7018c6176740c43 -m "greatest commit ever"
#now we need to referece the master to the commit
echo "c92e1d0fa5577c7ac5a08644abb19a7ef43ce6a5" > .git/refs/heads/master
#now when i use git status everything will be cleared and git log will work fine
#also we can use it with tags
mkdir .git/refs/tags
echo "c92e1d0fa5577c7ac5a08644abb19a7ef43ce6a5" > .git/refs/tags/V1

