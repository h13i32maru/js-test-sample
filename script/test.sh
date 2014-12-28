#!/bin/bash

# compile es6 to es5
./node_modules/.bin/traceur --out build/test/all_test.js $(find test/ -name '*_test.js')
./node_modules/.bin/espower build/test/all_test.js > build/test/espowered_all_test.js

# copy test env.
#if [ ! -e 'build/node_modules' ]
#then
#    ln -s ../node_modules build/
#fi
#
#if [ ! -e 'build/bower_components' ]
#then
#    ln -s ../bower_components build/
#fi

#cp test/index.html build/test/
#open build/test/index.html

if [ "$TRAVIS" -eq 1 ]
then
    ./node_modules/.bin/karma start test/karma.conf.js --browsers ChromeTravis
else
    ./node_modules/.bin/karma start test/karma.conf.js
fi
