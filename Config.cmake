
# setup version numbers
set(VERSION_MAJOR 0)
set(VERSION_MINOR 6)
set(VERSION_PATCH 0)

# Set the default build type to release with debug info
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE RelWithDebInfo
        CACHE STRING "Choose the type of build, options are: None Debug Release RelWithDebInfo MinSizeRel."
    )
endif()

# Set the default test build option to false
if(NOT BUILD_TEST)
    set(BUILD_TEST FALSE
        CACHE STRING "TRUE to build the unit tests (requires the Boost Test Library), FALSE otherwise."
    )
endif()

# define install directory for miscelleneous files
if(WIN32 AND NOT UNIX)
    set(INSTALL_MISC_DIR .)
elseif(UNIX)
    set(INSTALL_MISC_DIR share/camp)
endif()
