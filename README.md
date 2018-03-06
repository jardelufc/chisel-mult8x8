8x8 Multiplier in Chisel
-------------------------

8x8 Multiplier Core architecture is detalied in Mult8x8.doc file . The scripts in this repo are based om chisel tutorial (https://github.com/ucb-bar/chisel-tutorial).

Install Java
------------

    $ sudo add-apt-repository ppa:webupd8team/java
    $ sudo apt-get update
    $ sudo apt-get install oracle-java8-installer


Install SBT
-----------

    $ echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
    $ sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
    $ sudo apt-get update
    $ sudo apt-get install sbt


Getting the Repo and running 
----------------------------

    $ git clone https://github.com/jardelufc/chisel-mult8x8.git
    $ cd chisel-mult8x8
    $ git fetch origin
    $ git checkout release
    $ ./run-mult8x8 mult8x8

Verilator installation
----------------------

Install verilator using any of the following possible ways
For Ubuntu 17.04
```bash
sudo apt install pkg-config verilator
#optionally gtkwave to view waveform dumps
```

For Ubuntu 16.10 and lower
```bash 
sudo apt install pkg-config
wget http://mirrors.kernel.org/ubuntu/pool/universe/v/verilator/verilator_3.900-1_amd64.deb
sudo dpkg -i verilator_3.900-1_amd64.deb
```

If you don't have enough permissions to use apt on your machine
```bash
# make autoconf g++ flex bison should be available
wget https://www.veripool.org/ftp/verilator-3.906.tgz
tar -xzf verilator-3.906.tgz
cd verilator-3.906
unset VERILATOR_ROOT
./configure
make
export VERILATOR_ROOT=$PWD
export PATH=$PATH:$VERILATOR_ROOT/bin

Simulation with verilator (Previously downloaded, compiled and installed) and verilog generator
-----------------------------------------------

    $ ./run-mult8x8.sh Mult8x8 --backend-name verilator or $ ./run-mult8x8.sh Mult8x8 -fiwv
    $ gtkwave test_run_dir/mult8x8/Mult8x8/Mult8x8.vcd &
    
Another way for Generating Verilog (Previously download and compile firrtl from chisel 3)
-------------------------------------------------------------------------
    $ cd test_run_dir/mult8x8/Mult8x8
    $ <firrtl dir>/utils/bin/firrtl -i Mult8x8.fir -o Mult8x8.v -X verilog

Understanding the repo
----------------------

    Generated verilog: https://github.com/jardelufc/chisel-mult8x8/tree/release/test_run_dir/mult8x8/Mult8x8
    Test benches: https://github.com/jardelufc/chisel-mult8x8/tree/release/src/test/scala/mult8x8
    RTL files in Scala: https://github.com/jardelufc/chisel-mult8x8/tree/release/src/main/scala/mult8x8
