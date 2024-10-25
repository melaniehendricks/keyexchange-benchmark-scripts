# keyexchange-benchmark-scripts

**Instructions for installing boringssl**
===================================================
linux: `apt install build-essential cmake ninja-build`
macos homebrew: `brew install cmake ninja`

`git clone "https://boringssl.googlesource.com/boringssl"
cd boringssl
cmake -GNinja -B build -DCMAKE_BUILD_TYPE=Release
ninja -C build`

bssl is in ./build

to run server: 
`./start_server.sh`

in a separate window, htop (we are looking at cumulative CPU time):
\# this gets the pid (process id) for the server (1st value since the 2nd is the parent pid)
`ps -ef | grep bssl `

`htop -p <pid>`

to run client:
The first parameter is the number of connections to the server.
The second parameter is the type of key exchange (classical or hybrid)

`./start_client.sh 100000 classical` 
or 
`./start_client.sh 100000 hybrid`




