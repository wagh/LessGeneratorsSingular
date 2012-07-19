#!/bin/bash
cd $HOME/Data/Mathematics/Computations/git/Singular/spielwiese
git clone https://github.com/Singular/Sources.git                    # Need to do only once.
# git clone https://github.com/Singular/Sources.git          # Need to do only once.
git branch			# must be spielwiese
git pull			# update from github
# git checkout spielwiese		# Need to do only once.
# git branch -D master

########## 
# Compilation process
./autogen.sh 
./configure --prefix=$HOME/Software/Singular/spielwiese/
make
make install
cd $HOME/Software/Singular/spielwiese/bin/
rm -f $HOME/bin/Singular-dev
ln -s `pwd`/Singular  $HOME/bin/Singular-dev 


#################################################################################

cd $HOME/Data/Mathematics/Computations/git/Singular/master
git clone https://github.com/Singular/Sources.git                    # Need to do only once.
# git clone https://github.com/Singular/Sources.git          # Need to do only once.
git checkout master		# Need to do only once.
git branch -D spielwiese
git branch			# must be master
git pull			# update from github
########## 
# Compilation process
./configure --prefix=$HOME/Software/Singular/master
make
make install_all
cd $HOME/Software/Singular/master/
wget -c http://www.mathematik.uni-kl.de/ftp/pub/Math/Singular/SOURCES/3-1-4/Singular-3-1-4-4-share.tar.gz
tar -xvzf Singular-3-1-4-4-share.tar.gz
rm -rf LIB			# Remove the LIB link to LIB in source
mv Singular/3-1-4/* .
rm -rf Singular
rm -f $HOME/bin/Singular
ln -s `pwd`/ix86-Linux/Singular  $HOME/bin/Singular
