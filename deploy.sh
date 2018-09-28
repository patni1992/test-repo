set -o pipefail
echo "installing dependecies"
yarn install 
 echo "linting"
 yarn run lint
  echo "cleaning up"
 yarn install --production --ignore-scripts --prefer-offline
