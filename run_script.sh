echo "Testing my mvn build"
echo "Docker version is "
docker -v
echo "Building docker image"
docker build --tag karate:1.0 .
docker run --rm --volume $PWD:/usr/src/app --user "$UID:$GROUPS" karate:1.0
echo $PWD
ls
docker rmi karate:1.0