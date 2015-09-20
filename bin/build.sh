#!/bin/sh

CURRENT_DIR=`pwd`

SCRIPT_DIR=$(cd `dirname $0` && pwd)
cd $SCRIPT_DIR/../

cabal install alex
cabal install happy

cabal install --only-dependencies
cabal configure
cabal build

cd $CURRENT_DIR
