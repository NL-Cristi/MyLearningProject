@echo off
set PLATFORM=%1
set ACTION=%2

if "%PLATFORM%"=="clean" (
    mingw32-make -f Makefile.mingw clean
    nmake -f Makefile.msvc clean
    make -f Makefile.linux clean
    make -f Makefile.mac clean
    goto :eof
)

if "%ACTION%"=="clean" (
    if "%PLATFORM%"=="mingw" (
        mingw32-make -f Makefile.mingw clean
    ) else if "%PLATFORM%"=="msvc" (
        nmake -f Makefile.msvc clean
    ) else if "%PLATFORM%"=="linux" (
        make -f Makefile.linux clean
    ) else if "%PLATFORM%"=="mac" (
        make -f Makefile.mac clean
    ) else (
        echo Usage: %0 {mingw^|msvc^|linux^|mac} [clean]
        exit /b 1
    )
    goto :eof
)

if "%PLATFORM%"=="mingw" (
    mingw32-make -f Makefile.mingw
) else if "%PLATFORM%"=="msvc" (
    nmake -f Makefile.msvc
) else if "%PLATFORM%"=="linux" (
    make -f Makefile.linux
) else if "%PLATFORM%"=="mac" (
    make -f Makefile.mac
) else (
    echo Usage: %0 {mingw^|msvc^|linux^|mac} [clean]
    exit /b 1
)