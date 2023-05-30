echo "Testing my mvn build"
echo "Docker version is "
docker -v
echo "Building docker image"
docker build --tag karate:1.0 .
echo "Runnung docker image"
docker run --rm karate:1.0