docker buildx create --use --name builder  --driver-opt image=moby/buildkit:v0.10.6
docker buildx build --no-cache --platform linux/arm64,linux/amd64 --tag tuyendev/mongo:6 . --push