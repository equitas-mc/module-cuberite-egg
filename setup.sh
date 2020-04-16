rm -f Cuberite.tar.gz
wget https://builds.cuberite.org/job/Cuberite%20Linux%20x64%20Master/lastSuccessfulBuild/artifact/Cuberite.tar.gz

rm -rf Cuberite
mkdir Cuberite
tar -x -C Cuberite -f Cuberite.tar.gz
rm Cuberite.tar.gz

mkdir -p data
mkdir -p data/players
mkdir -p data/worlds
mkdir -p data/PluginData

ln -s ../data/players Cuberite/players
ln -s ../data/PluginData Cuberite/PluginData

ln -s ../../server-egg/module-cuberite-egg/AutoSave Cuberite/Plugins/AutoSave

# The Ranks.sqlite is only created on server start. to be able to update
# permissions a dump is loaded here
cat server-egg/Ranks.sql | sqlite3 Cuberite/Ranks.sqlite
