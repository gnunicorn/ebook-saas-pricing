set -e
git co master
/Users/benjaminkampmann/dev/git-scribe/bin/git-scribe gen
git co gh-pages
git rm .
mv -f output/* .
git add --all .
git ci -m"Update to latest master"
git push