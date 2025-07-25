# My new project

```bash
MyLearningProject/
├── src/                 # Source code
├── include/             # Header files for libraries
├── lib/                 # Precompiled libraries (if needed)
├── assets/              # Optional: for storing files to read
├── build/               # Compiled output
├── Makefile             # Build script
└── README.md            # Project documentation
```

```bash
mkdir src include lib assets build
touch Makefile README.md
```

```bash
https://github.com/raysan5/raylib
https://github.com/raysan5/rini
https://github.com/raysan5/raygui
https://sourceforge.net/projects/tinyfiledialogs/

```

```bash
tar -xzvf raylib-5.5_macos.tar.gz
```

```bash
tar -xzvf raylib-5.5_linux_amd64.tar.gz
```

```bash
C:\MyLearningProject
├───assets
├───build
├───downloads
│   ├───raylib-5.5_linux_amd64
│   │   ├───include (raylib.h, raymath.h, rlgl.h)
│   │   └───lib (libraylib.a, libraylib.so, libraylib.so.5.5.0, libraylib.so.550)
│   ├───raylib-5.5_macos
│   │   ├───include (raylib.h, raymath.h, rlgl.h)
│   │   └───lib (libraylib.5.5.0.dylib, libraylib.550.dylib, libraylib.a, libraylib.dylib)
│   ├───raylib-5.5_win64_mingw-w64
│   │   ├───include (raylib.h, raymath.h, rlgl.h)
│   │   └───lib (libraylib.a, libraylibdll.a, raylib.dll)
│   ├───raylib-5.5_win64_msvc16
│   │   ├───include (raylib.h, raymath.h, rlgl.h)
│   │   └───lib (raylib.dll, raylib.lib, raylibdll.lib)
│   ├───tinyfiledialogs-current
│   │   └───tinyfiledialogs
│   │       ├───dll_cs_lua_R_fortran_pascal
│   │       ├───more_dialogs (tinyfd_moredialogs.c, tinyfd_moredialogs.h)
│   │       ├───hello_wchar_t.c
│   │       ├───hello.c
│   │       ├───README.txt
│   │       ├───tinyfiledialogs.c
│   │       └───tinyfiledialogs.h
│   ├───raygui.h
│   └───rini.h
├───include
├───lib
├───src
├───Makefile
└───README.md
```
```bash
C:\MyLearningProject
├───assets
├───build
│   ├───winMinGW
│   ├───winMSVC
│   ├───linux
│   └───mac
├───downloads
│   ├───raylib-5.5_linux_amd64
│   ├───raylib-5.5_macos
│   ├───raylib-5.5_win64_mingw-w64
│   ├───raylib-5.5_win64_msvc16
│   ├───tinyfiledialogs-current
│   ├───raygui.h
│   └───rini.h
├───include
│   ├───winMinGW
│   ├───winMSVC
│   ├───linux
│   └───mac
├───lib
│   ├───winMinGW
│   ├───winMSVC
│   ├───linux
│   └───mac
├───src
├───Makefile
└───README.md
```

# Clean All platforms:

```bash
./build.sh clean
```

# clean a specific platform:

```bash
  ./build.sh linux clean
  ./build.sh mac clean
  ./build.sh mingw clean
```


# On Windows (batch):
## Clean all platforms:

```bash
  .\build.bat clean
```

```bash
  .\build.bat mingw clean
  .\build.bat msvc clean
  .\build.bat linux clean
  .\build.bat mac clean
```
