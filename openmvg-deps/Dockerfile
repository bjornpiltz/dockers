FROM ubuntu:16.04

USER root

## Install packages
RUN apt-get update -q && \
    apt-get install -y --fix-missing --no-install-recommends \
    wget \
    build-essential \
    cmake \
    git \
    subversion \
    gcc-4.8 \ 
    g++-4.8 \ 
    libpng-dev \
    libjpeg-dev \
    libtiff-dev \ 
    # google-glog + gflags
    libgoogle-glog-dev \
    # BLAS & LAPACK
    libatlas-base-dev \
    # Eigen3
    libeigen3-dev \
    # SuiteSparse and CXSparse (optional)
    # - If you want to build Ceres as a *static* library (the default)
    #   you can use the SuiteSparse package in the main Ubuntu package
    #   repository:
    libsuitesparse-dev  \
    # - However, if you want to build Ceres as a *shared* library, you must
    #   add the following PPA:
    software-properties-common && \
    add-apt-repository ppa:bzindovic/suitesparse-bugfix-1319687 && \
    apt-get install -y --fix-missing --no-install-recommends libsuitesparse-dev
