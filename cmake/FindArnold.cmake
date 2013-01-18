# - Arnold finder module
# This module searches for a valid Arnold instalation.
#
# Variables that will be defined:
# ARNOLD_FOUND             Defined if a Maya installation has been detected
# ARNOLD_LIBRARY           Path to ai library
# ARNOLD_INCLUDE_DIR       Path to the devkit's include directories
#
# Naming convention:
#  Local variables of the form _arnold_foo
#  Input variables from CMake of the form Arnold_FOO
#  Output variables of the form ARNOLD_FOO
#

find_library(ARNOLD_LIBRARY
  NAMES
    ai
  PATHS
    $ENV{ARNOLD_HOME}/bin
  DOC "Arnold library"
)

find_path(ARNOLD_INCLUDE_DIR ai.h
  PATHS
    $ENV{ARNOLD_HOME}/include
  DOC "Maya's library path"
)

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(Arnold DEFAULT_MSG
  ARNOLD_LIBRARY ARNOLD_INCLUDE_DIR
)
