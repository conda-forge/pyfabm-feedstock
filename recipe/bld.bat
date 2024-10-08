REM From https://github.com/conda-forge/netcdf-fortran-feedstock/blob/main/recipe/bld.bat
set "HOST=x86_64-w64-mingw32"
set "FC=%HOST%-gfortran.exe"

echo [build_ext]>"%SRC_DIR%\setup.cfg"
echo cmake_opts=-G "Ninja" %CMAKE_ARGS%>>"%SRC_DIR%\setup.cfg"
echo compiler=%FC%>>"%SRC_DIR%\setup.cfg"
"%PYTHON%" -m pip install . -vv
