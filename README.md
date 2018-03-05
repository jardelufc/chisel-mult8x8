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
    
Simulation with verilator (Previously downloaded, compiled and installed) and verilog generator
-----------------------------------------------

    $ ./run-mult8x8.sh Mult8x8 --backend-name verilator
    $ gtkwave test_run_dir/mult8x8/Mult8x8/Mult8x8.vcd &
    
Generating Verilog (Previously download and compile firrtl from chisel 3)
-------------------------------------------------------------------------
    $ cd test_run_dir/mult8x8/Mult8x8
    $ <firrtl dir>/utils/bin/firrtl -i Mult8x8.fir -o Mult8x8.v -X verilog

Understanding the repo
----------------------

    Generated verilog: https://github.com/jardelufc/chisel-mult8x8/tree/release/test_run_dir/mult8x8/Mult8x8
    Test benches: https://github.com/jardelufc/chisel-mult8x8/tree/release/src/test/scala/mult8x8
    RTL files in Scala: https://github.com/jardelufc/chisel-mult8x8/tree/release/src/main/scala/mult8x8
