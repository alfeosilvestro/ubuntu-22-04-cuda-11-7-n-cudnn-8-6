## references

> https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html
> (make sure to follow the post installation steps)
> 
> https://docs.nvidia.com/deeplearning/cudnn/install-guide/index.html#install-linux

## PREREQUISITS - SYSTEM

1. your ubuntu must be 22.04
2. your ubuntu must be a fresh install
3. your ubuntu must have timeshift installed
4. your ubuntu must have run following commands before starting
>   ####- install SSH server -####
>   $ sudo apt install -y openssh-server
>   $ sudo systemctl enable --now ssh
> 
>   ####- install build essentials for gcc -####
>   $ sudo apt install -y build-essential
> 
>    ####- install git -####
>   $ sudo apt install -y git

### remove 
> $ sudo apt-get --purge remove xserver-xorg-video-nouveau

## PREREQUISITS - NVIDIA INSTALLERS
> get cuda_11.7.1_515.65.01_linux.run
> 
> wget https://developer.download.nvidia.com/compute/cuda/11.7.1/local_installers/cuda_11.7.1_515.65.01_linux.run
> 
> sudo sh cuda_11.7.1_515.65.01_linux.run
>
> get cudnn-linux-x86_64-8.6.0.163_cuda11-archive.tar.xz
> 
> download manually from this URL - https://developer.nvidia.com/cudnn 
> 
> you will need to login with nvidia developer account
> 
> get install-cudnn-8.6.sh ## prepared by me
> 
> copy all files to "/opt/nvidia-installers
> 
> add execution permission
> $ sudo chmod +x install-cudnn-8.6.sh ## make it runable

## Install cuda toolkit
> sudo sh cuda cuda_11.7.1_515.65.01_linux.run 
> (turn on xorg update in driver options)

## Install cudnn
> ./install-cudnn-8.6.sh

## add following lines to the end of "~/.profile" file
> export PATH=/usr/local/cuda-11.7/bin${PATH:+:${PATH}}
> export LD_LIBRARY_PATH=/usr/local/cuda-11.7/lib${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

## reboot the system
> sudo reboot

## test the driver after reboot
> nvidia-smi

## test the cudnn version
> nvcc --version
