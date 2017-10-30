INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_TUTORIAL_TF tutorial_tf)

FIND_PATH(
    TUTORIAL_TF_INCLUDE_DIRS
    NAMES tutorial_tf/api.h
    HINTS $ENV{TUTORIAL_TF_DIR}/include
        ${PC_TUTORIAL_TF_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    TUTORIAL_TF_LIBRARIES
    NAMES gnuradio-tutorial_tf
    HINTS $ENV{TUTORIAL_TF_DIR}/lib
        ${PC_TUTORIAL_TF_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(TUTORIAL_TF DEFAULT_MSG TUTORIAL_TF_LIBRARIES TUTORIAL_TF_INCLUDE_DIRS)
MARK_AS_ADVANCED(TUTORIAL_TF_LIBRARIES TUTORIAL_TF_INCLUDE_DIRS)

