SET(targetname Dummy)

## Specify the project files ##

SET(toplevel_sources
src/Dummy.cpp
)

SET(toplevel_headers
include/dummy/Dummy.h
)

## Collect the project files into sources and headers ##

SET(sources
${toplevel_sources}
)

SET(headers
${toplevel_headers}
)

## Specify the include directories ##

INCLUDE_DIRECTORIES(include/dummy)


## Specify the target and where to put it ##
SET(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib/cpp)
ADD_LIBRARY(${targetname} STATIC ${sources} ${headers})
SET_TARGET_PROPERTIES(${targetname} PROPERTIES DEBUG_OUTPUT_NAME "${targetname}_d")

## Specify things to install ##
INSTALL(TARGETS ${targetname} DESTINATION lib/cpp)

