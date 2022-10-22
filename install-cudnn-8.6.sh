#!/bin/sh

## un-tar cudnn package
tar -xvf cudnn-linux-x86_64-8.6.0.163_cuda11-archive.tar.xz

## copy files to respective locations
sudo cp cudnn-linux-x86_64-8.6.0.163_cuda11-archive/include/cudnn*.h /usr/local/cuda/include
sudo cp -P cudnn-linux-x86_64-8.6.0.163_cuda11-archive/lib/libcudnn* /usr/local/cuda/lib64

## change permission
sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*

## export path to bash
export PATH=/usr/local/cuda-11.7/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-11.7/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}