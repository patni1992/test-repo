set -uo pipefail


yarn install 
echo "installing dependecies"
 
 
 yarn run lint
 echo "linting"

 TESTS_EXIT_STATUS=$?

echo "cleaning"
 yarn install --production --ignore-scripts --prefer-offline

 exit $TESTS_EXIT_STATUS