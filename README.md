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

