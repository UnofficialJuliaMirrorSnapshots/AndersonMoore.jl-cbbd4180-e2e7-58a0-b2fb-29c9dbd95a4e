cmake_minimum_required(VERSION 2.8.9)

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "usr/lib/")


project(AMAC)
enable_language(Fortran)

find_package(BLAS REQUIRED)
find_package(LAPACK REQUIRED)
set(LIBS ${BLAS_LIBRARIES} ${LAPACK_LIBRARIES})

include_directories(usr/include)
file(GLOB SOURCES "src/AMA/*")

add_library(AMAC SHARED ${SOURCES})

target_link_libraries(AMAC ${LIBS})

SET_TARGET_PROPERTIES(AMAC PROPERTIES LINKER_LANGUAGE C)





