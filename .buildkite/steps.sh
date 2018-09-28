set -uo pipefail


yarn install 
echo "installing dependecies"
 
 echo "linting" 
 yarn run lint


echo "cleaning"
 yarn install --production --ignore-scripts --prefer-offline

 clean_up

