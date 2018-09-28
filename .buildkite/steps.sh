set -eu

yarn install 
echo "installing dependecies"
 yarn run lint
 echo "linting"
echo "cleaning"
 yarn install --production --ignore-scripts --prefer-offline