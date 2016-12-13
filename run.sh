#!/bin/bash
docker build -t openmvg-deps openmvg-deps
docker build --build-arg NUM_CORES=4 -t openmvg-thirdparty openmvg-thirdparty
docker build -t openmvg-clone openmvg-clone
docker build --build-arg NUM_CORES=2 -t openmvg-build openmvg-build

#docker run -a stdin -a stdout -i -t 91b2540aeb74 /bin/bash
