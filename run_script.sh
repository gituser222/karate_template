echo "Testing my mvn build"
echo "Docker version is "
docker -v
echo "Building docker image"
docker build --tag karate:1.0 .
docker run --rm --volume $PWD:/usr/src/app karate:1.0
docker rmi karate:1.0