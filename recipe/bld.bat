set FFLAGS=-static-libgfortran
set LDFLAGS=-static
set "CMAKE_GENERATOR=MinGW Makefiles"
echo [build_ext]>"%SRC_DIR%\setup.cfg"
echo cmake_opts=%CMAKE_ARGS%>>"%SRC_DIR%\setup.cfg"
"%PYTHON%" -m pip install . -vv
