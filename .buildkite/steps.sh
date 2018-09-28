set -euo pipefail
yarn install 
echo "installing dependecies"
 
 echo "lintidng" 
 yarn run lint


echo "cleaning"
 yarn install --production --ignore-scripts --prefer-offline

 

