cmake_minimum_required(VERSION 3.13)
project(KernelLauncher)
find_package(HIP REQUIRED CONFIG REQUIRED PATHS ${ROCM_PATH_ENV_VALUE} /opt/rocm)
set(CXX_STANDARD_REQUIRED 17)
set(CXX_STANDARD 17)
add_executable(${PROJECT_NAME}
               KernelLauncher.cpp
               )

message(${HIP_INCLUDE_DIR})
target_include_directories(${PROJECT_NAME} PRIVATE ${HIP_INCLUDE_DIR})
target_link_libraries(${PROJECT_NAME} ${HIP_LIBRARY})
