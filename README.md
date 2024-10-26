# keyexchange-benchmark-scripts

**Instructions for installing boringssl**
===================================================
linux: `apt install build-essential cmake ninja-build` <br/>
macos homebrew: `brew install cmake ninja` <br/>

`git clone "https://boringssl.googlesource.com/boringssl"` <br/>
`cd boringssl` <br/>
`cmake -GNinja -B build -DCMAKE_BUILD_TYPE=Release` <br/>
`ninja -C build`

bssl is in ./build

**to run server:** <br/>
====================================================
start_server.sh should be in boringssl/build/ <br/>
Run `./start_server.sh` in its own window <br/>


Run `ps -ef | grep bssl ` <br/>
This gets the pid (process id) for the serve. <br/>
Take the first value since the second value is the parent pid <br/>

Then run `htop -p <pid>` in a separate window. <br/>


**to run client:** <br/>
====================================================
client.sh should be in boringssl/build/ <br/>
The first parameter is the number of connections to the server. <br/>
The second parameter is the type of key exchange (classical or hybrid) <br/>

Run client in its own window. <br/>
`./start_client.sh 100000 classical` <br/>
or <br/>
`./start_client.sh 100000 hybrid` 




