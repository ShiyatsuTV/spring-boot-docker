# Maven build, generate target/training-1.0.0.jar
mvn clean install
# Get the version from pom.xml
VERSION=$(mvn -q -DforceStdout help:evaluate -Dexpression=project.version)
# Run docker build with dockerfile, generate two images : training-app:1.0.0 and training-app:latest
# APP_VERSION will be use in dockerfile
sudo docker build \
  --build-arg APP_VERSION="$VERSION" \
  -t training-app:"$VERSION" \
  -t training-app:latest \
  .