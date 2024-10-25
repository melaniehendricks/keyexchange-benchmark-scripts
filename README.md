# keyexchange-benchmark-scripts

**Instructions for installing boringssl**
===================================================
linux: `apt install build-essential cmake ninja-build` <br/>
macos homebrew: `brew install cmake ninja`

`git clone "https://boringssl.googlesource.com/boringssl"` <br/>
`cd boringssl` <br/>
`cmake -GNinja -B build -DCMAKE_BUILD_TYPE=Release` <br/>
`ninja -C build`

bssl is in ./build

**to run server:**
start_server.sh should be in boringssl/build
====================================================
`./start_server.sh`

in a separate window, htop (we are looking at cumulative CPU time):
\# this gets the pid (process id) for the server (1st value since the 2nd is the parent pid) <br/>
`ps -ef | grep bssl ` <br/>

`htop -p <pid>`

**to run client:**
client.sh should be in boringssl/build
====================================================
The first parameter is the number of connections to the server.
The second parameter is the type of key exchange (classical or hybrid)

`./start_client.sh 100000 classical` <br/>
or 
`./start_client.sh 100000 hybrid` <br/>




