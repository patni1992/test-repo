yarn install 
echo "installing dependecies"
 yarn run lint
 echo "linting"
 yarn install --production --ignore-scripts --prefer-offline
 echo "cleaning up"