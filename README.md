# cmake-build-scripts

This project contains command scripts for Windows and Linux to compile CMake projects.

All scripts are used in a uniform way.

1. Open the command line
2. Move to the directory where the build folder for the CMake project should be created. (Usually this is the main folder of the CMake project itself)
3. <code>&lt;build command&gt; &lt;relative path to folder where the CMakeLists.txt is located&gt;</code>

### Examples to compile on Linux

- Assuming this project is cloned in <code>~/github/cmake-build-scripts</code>.
- Assuming the CMake project to be compiled is located in <code>~/cmake-projects/cmake_project</code>.

##### Crosscompilation on Linux for Android:

```bash
$ cd ~/cmake-projects/cmake_project
$ ../../github/cmake-build-scripts/build_android.sh .
```

In the current path a folder <code>build_android</code> is created in which the project is built.

### Examples to compile on Windows

- Assuming this project is cloned in <code>D:\github\cmake-build-scripts</code>.
- Assuming the CMake project to be compiled is located in <code>D:\cmake-projects\cmake_project</code>.

##### Crosscompilation on Windows for Android:

```bash
$ cd D:\cmake-projects\cmake_project
$ ..\..\github\cmake-build-scripts\build_android.bat .
```

In the current path a folder <code>build_android</code> is created in which the project is built.
