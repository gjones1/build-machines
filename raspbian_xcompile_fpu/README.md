# Cross Compiler for Raspbian

This is available in docker as geordiejones/raspbian_xcompile_bare

This build machine is based on geordiejones/raspbian_xcompile_bare. It
adds the following raspbian cross compiler libraries
* libusb-0
* libboost-program-options

The installed CMake is updated to the latest versions (from source).

Build locally in the normal way:
```bash
export RPXC_IMAGE=geordiejones/raspbian_xcompile_bare
docker build -t $RPXC_IMAGE .
 ```

To use first create the launcher:
```bash
docker run $RPXC_IMAGE > rpxc
```

Now use the launcher:
```bash
./rpxc bash
```
