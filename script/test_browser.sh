#!/bin/bash

./node_modules/.bin/traceur --out build/test/all_test.js $(find test/ -name '*_test.js')
./node_modules/.bin/espower build/test/all_test.js > build/test/espowered_all_test.js

open -a 'Google Chrome' test/index.html
