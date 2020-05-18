# cmake-build-scripts

This project contains command scripts for Windows and Linux to compile CMake projects.

All scripts are used in a uniform way.

1. open the command line
2. change to the directory where the build folder for the CMake project should be created. (Usually this is the main folder of the CMake project itself)
3. <code>&lt;build command&gt; &lt;relative path to folder where the CMakeLists.txt is located&gt;</code>

### Examples to compile on Linux

- This project is cloned in ~/github/cmake-build-scripts.
- The CMake project to be compiled is located in path ~/cmake-projects/foo_project.

#### Crosscompilation on Windows for Android:

```bash
$ cd ~/cmake-projects/foo_project
$ ../../github/cmake-build-scripts/build_android.sh .
```

In the current path a folder <code>build_android</code> is created in which the project is built.

### Examples to compile on Windows

- This project is cloned in D:\github\cmake-build-scripts.
- The CMake project to be compiled is located in path D:\cmake-projects\foo_project.

#### Crosscompilation on Windows for Android:

```bash
$ cd D:\cmake-projects\foo_project
$ ..\..\github\cmake-build-scripts\build_android.bat .
```

In the current path a folder <code>build_android</code> is created in which the project is built.
