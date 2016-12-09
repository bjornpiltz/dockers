FROM openmvg-deps:latest

USER root
ARG NUM_CORES=2

WORKDIR /tmp
# Build ceres:
RUN git clone --depth=1 https://ceres-solver.googlesource.com/ceres-solver && \
    cd ceres-solver && \
    mkdir build && \
    cd build && \
    cmake -DOPENMP=ON \
          -DCXX11=ON \
          -DBUILD_SHARED_LIBS=ON \
		  -DBUILD_EXAMPLES=OFF \
          .. && \
    make -j $NUM_CORES && \
    make test && \
    make install

# Build Coin/OSI/Clp
RUN svn --non-interactive --trust-server-cert co https://projects.coin-or.org/svn/CoinUtils/trunk coin-CoinUtils && \
    cd coin-CoinUtils && \
    ./configure -C --prefix=/usr/local && \
    make -j $NUM_CORES && \
    make test && \
    make install
	
RUN svn --non-interactive --trust-server-cert co https://projects.coin-or.org/svn/Osi/stable/0.106 coin-Osi && \
    cd coin-Osi && \
    ./configure -C --prefix=/usr/local && \
    make -j $NUM_CORES && \
    make test && \
    make install
	
RUN svn --non-interactive --trust-server-cert co https://projects.coin-or.org/svn/Clp/stable/1.16 coin-Clp && \
    cd coin-Clp && \
    ./configure -C --prefix=/usr/local && \
    make -j $NUM_CORES && \
    make test && \
    make install
	
# Build LEMON
RUN	wget http://lemon.cs.elte.hu/pub/sources/lemon-1.3.1.tar.gz && \
	tar xvf lemon-1.3.1.tar.gz && cd lemon-1.3.1 && \
	mkdir build && cd build && \
	cmake .. && \
	make -j $NUM_CORES check && make install