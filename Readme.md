# QQuickStaticHelloWorld

Minimal working cmake application that can be compiled with a static Qt library.

## 🚀 Build and run

### 🌍 WebAssembly

This project can be build with [Qt for WebAssembly](https://doc.qt.io/qt-5/wasm.html). 

To build this application i use a [Docker Image](https://hub.docker.com/r/reivilo1234/qt-webassembly-cmake).

```bash
cd QQuickStaticHelloWorld
docker run -it --rm -v $(pwd):/src/ -u $(id -u):$(id -g) reivilo1234/qt-webassembly-cmake:qt5.15-em1.39.10 bash
mkdir build && cd build
cmake ..
make -j
exit
```

This generates a couple of files:

|       Generated file        |     Brief Description      |
| :-------------------------: | :------------------------: |
| QQuickStaticHelloWorld.html |       HTML container       |
|         qtloader.js         | JS API for loading Qt apps |
|  QQuickStaticHelloWorld.js  | JS API for loading Qt apps |
| QQuickStaticHelloWorld.wasm |   emscripten app binary    |

Then simply start a web server

```bash
mv QQuickStaticHelloWorld.html index.html
python3 -m http.server 8000
```

Simply time `localhost:8000` in your web brower.
