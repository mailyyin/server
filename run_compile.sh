container_version=20.10
container_tag=r20.10
nohup ./compile.py \
    --version=0.0.0 \
    --build-dir=/tmp/citritonbuild \
    --enable-logging \
    --enable-stats \
    --enable-tracing \
    --enable-metrics \
    --enable-gpu-metrics \
    --enable-gpu \
    --filesystem=gcs \
    --filesystem=s3 \
    --endpoint=http \
    --endpoint=grpc \
    --repo-tag=common:$container_tag \
    --repo-tag=core:$container_tag \
    --repo-tag=backend:$container_tag \
    --backend=custom \
    --backend=ensemble \
    --backend=tensorrt \
    --backend=tensorflow1:$container_tag \
    --upstream-container-version=20.10 \
    --onnx-runtime-version=1.4.0 \
    --onnx-runtime-openvino-version=2020.2 \
    --build-dir=/tmp/tritonbuild \
    --install-dir=/tmp/tritonbuild/install \
    -v > run_compile.log 2>&1 &

#    --backend=identity:$container_tag \
#    --backend=repeat:$container_tag \
#    --backend=square:$container_tag \
#    --backend=tensorflow1:$container_tag \
#    --backend=tensorflow2:$container_tag \
#    --backend=python:$container_tag \
#    --backend=dali:$container_tag \
