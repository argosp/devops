source .env

echo "***** running development script... *****"

cd development

cd src

git submodule init && git submodule update

echo "initializing and updating submodules"

echo "***** installing dependencies *****"


cd graphql


npm install && echo "***** installing graphql dependencies *****" \
|| echo "***** something went wrong while installing graphql dependencies *****"

cd .. #./devops/development/src
 
cd dashboard


yarn && echo "***** installing dashboard dependencies *****" \
|| echo "***** something went wrong while installing dashboard dependencies *****"

cd .. #./devops/development/src

cd .. #./devops/development

echo "***** bringing up the app with docker-compose *****"

docker-compose up -d && \

echo "***** Ready to go! try http://localhost:3000 *****"

docker-compose logs -f