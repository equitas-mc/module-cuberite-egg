rm Cuberite.tar.gz
wget https://builds.cuberite.org/job/Cuberite%20Linux%20x64%20Master/lastSuccessfulBuild/artifact/Cuberite.tar.gz
rm -rf Cuberite
mkdir Cuberite
tar -x -C Cuberite -f Cuberite.tar.gz
