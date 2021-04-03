# PS12 Image

##### Description

```
https://github.com/ginberg/ps12image_docker_operator.git
```

##### Build & Run

```bash
VERSION=0.0.2
docker build -t ginberg/ps12:$VERSION .
docker push ginberg/ps12:$VERSION
git add -A && git commit -m "$VERSION" && git tag -a $VERSION -m "++" && git push && git push --tags

docker run -it --rm --entrypoint "/bin/bash" ginberg/ps12:$VERSION
```