# Precompiled sass binary for Node on Alpine Linux

Installing the node-sass module on Alpine Linux [requires full recompilation of the sass library](https://github.com/sass/node-sass/search?q=alpine&type=Issues) (requiring make, g++ and other build tools). This simple dockerfile uses [alpine-node](https://github.com/mhart/alpine-node) to pre-compile the bindings that can then be used when installing this library.

# Using the pre-compiled binaries


# Rebuilding 

Build the docker image:

```
docker build -t node-sass-builder .
```

Then copy the binary out of the image:

```
docker run -v /tmp/node-sass-releases:/releases node-sass-builder cp vendor/linux-x64-47/binding.node /releases/linux-x64-47_binding.node
```

