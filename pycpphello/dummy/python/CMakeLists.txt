SET(targetname pyDummy)

SET_PROPERTY(SOURCE dummy.i PROPERTY CPLUSPLUS ON)
SET_PROPERTY(SOURCE dummy.i PROPERTY SWIG_MODULE_NAME ${targetname})
SWIG_ADD_LIBRARY(${targetname}
  LANGUAGE python
  OUTPUT_DIR ${PROJECT_BINARY_DIR}/lib/python
  SOURCES dummy.i)

TARGET_INCLUDE_DIRECTORIES(${targetname}
  PRIVATE
  ../include
  ${Python_INCLUDE_DIRS}
  )

SET_PROPERTY(TARGET ${targetname} PROPERTY SWIG_USE_TARGET_INCLUDE_DIRECTORIES ON)

SET_TARGET_PROPERTIES(${targetname} PROPERTIES INSTALL_PATH ${PROJECT_SOURCE_DIR}/install/lib/python)
TARGET_LINK_LIBRARIES(${targetname} PRIVATE Dummy)
TARGET_LINK_LIBRARIES(${targetname} PRIVATE ${Python_LIBRARIES})


## Specify things to install ##
message(${MODULE_NAME})
message(${PROJECT_NAME})
INSTALL(TARGETS ${targetname} DESTINATION ${PROJECT_NAME}/${MODULE_NAME})
INSTALL(FILES ${PROJECT_BINARY_DIR}/lib/python/${targetname}.py DESTINATION ${PROJECT_NAME}/${MODULE_NAME})
