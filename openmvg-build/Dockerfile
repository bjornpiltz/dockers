FROM openmvg-clone:latest

USER root
ARG NUM_CORES=2
#ARG CXX="g++-4.8"

# Build openvMVG
WORKDIR /opt/openMVG
RUN cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo \
          -DCMAKE_INSTALL_PREFIX="/opt/openMVG" \
          -DEIGEN_INCLUDE_DIR_HINTS=/usr/share/include/eigen3 \
          -DCERES_DIR_HINTS=/usr/local/lib/cmake/Ceres \
		  -DCOINUTILS_INCLUDE_DIR_HINTS=/usr/local/include/coin \
		  -DCLP_INCLUDE_DIR_HINTS=/usr/local/include/coin \
		  -DOSI_INCLUDE_DIR_HINTS=/usr/local/include/coin \
		  -DLEMON_INCLUDE_DIR_HINTS=/usr/local/include/lemon \
          -DOpenMVG_BUILD_TESTS=ON \
          -DOpenMVG_BUILD_EXAMPLES=ON \
          /opt/src/openMVG/src/ && \
    make -j $NUM_CORES && \
    make test \
    make install
