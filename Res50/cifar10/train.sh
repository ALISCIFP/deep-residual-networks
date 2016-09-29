#!/usr/bin/env sh
set -e

caffe/build/tools/caffe train \
    -gpu 0 \
    -solver Res50/cifar10/solver.prototxt \
    2>&1 | tee /home/zshen5/Log/ResNet_cifar10.log \
    $@
