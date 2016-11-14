# Cross Compiler for Raspbian

This is available in docker as geordiejones/raspbian_xcompile_bare

A build-machine that will cross-compile for the raspberry-pi (based on sdthirlwall/raspberry-pi-cross-compiler).  The following extra packages are
pulled in.
* doxygen
* ninja
* pkgconf

The installed CMake is updated to the latest versions (from source).

Build locally in the normal way:
```bash
 docker build -t geordiejones/raspbian_xcompile_bare
 ```

To use first create the launcher:
```bash
docker run geordiejones/raspbian_xcompile_bare > rpxc
```

Now use the launcher:
```bash
./rpxc bash
```
