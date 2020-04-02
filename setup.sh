rm -f Cuberite.tar.gz
wget https://builds.cuberite.org/job/Cuberite%20Linux%20x64%20Master/lastSuccessfulBuild/artifact/Cuberite.tar.gz

rm -rf Cuberite
mkdir Cuberite
tar -x -C Cuberite -f Cuberite.tar.gz

rm Cuberite.tar.gz

# The Ranks.sqlite is only create on server start. to be able to update
# permissions a dump is loaded here
cat Ranks.sql | sqlite3 Cuberite/Ranks.sqlite
