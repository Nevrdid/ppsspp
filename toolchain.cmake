# This is a CMake toolchain file for cross-compilation to aarch64.
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

# Define the root of your toolchain and sysroot
set(TOOLCHAIN_ROOT /root/workspace/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu)
set(TRIPLET aarch64-none-linux-gnu)
set(SYSROOT ${TOOLCHAIN_ROOT}/sysroot)

# Specify the cross-compiler and other tools
set(CMAKE_C_COMPILER ${TOOLCHAIN_ROOT}/bin/${TRIPLET}-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_ROOT}/bin/${TRIPLET}-g++)
set(CMAKE_LINKER ${TOOLCHAIN_ROOT}/bin/${TRIPLET}-ld)
set(CMAKE_LD ${TOOLCHAIN_ROOT}/bin/${TRIPLET}-ld)
#set(CMAKE_ASM_COMPILER ${TOOLCHAIN_ROOT}/bin/${TRIPLET}-as)

## FOR -flto:
set(CMAKE_AR ${TOOLCHAIN_ROOT}/bin/${TRIPLET}-gcc-ar)
set(CMAKE_RANLIB ${TOOLCHAIN_ROOT}/bin/${TRIPLET}-gcc-ranlib)

## Else:
#set(CMAKE_AR ${TOOLCHAIN_ROOT}/bin/${TRIPLET}-ar)
#set(CMAKE_RANLIB ${TOOLCHAIN_ROOT}/bin/${TRIPLET}-ranlib)

# Set up the sysroot for compiler, linker, and find commands
#set(CMAKE_SYSROOT ${SYSROOT})
set(CMAKE_FIND_ROOT_PATH ${SYSROOT})

# Instruct CMake where to search for programs, libraries, and headers
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Define the C and C++ compiler flags
## For -flto:
set(COMMON_FLAGS "-march=armv8-a+crc+crypto+simd -mcpu=cortex-a53+crc -mtune=cortex-a53 -Ofast -flto")
## Else
#set(COMMON_FLAGS "-march=armv8-a+crc+crypto+simd -mcpu=cortex-a53+crc -mtune=cortex-a53 -Ofast")

## For -ffat-lto-objects
#set(CMAKE_C_FLAGS "${COMMON_FLAGS} -ffat-lto-objects  --sysroot=${SYSROOT}" CACHE STRING "C compiler flags" FORCE)
#set(CMAKE_CXX_FLAGS "${COMMON_FLAGS} -ffat-lto-objects  --sysroot=${SYSROOT}" CACHE STRING "C++ compiler flags" FORCE)
## Else
set(CMAKE_C_FLAGS "${COMMON_FLAGS}  --sysroot=${SYSROOT}" CACHE STRING "C compiler flags" FORCE)
set(CMAKE_CXX_FLAGS "${COMMON_FLAGS} --sysroot=${SYSROOT}" CACHE STRING "C++ compiler flags" FORCE)

# Set assembly flags to include the architecture-specific options
set(CMAKE_ASM_FLAGS "${COMMON_FLAGS}" CACHE STRING "Assembler flags" FORCE)

# Set linker flags for sysroot and common library paths
set(CMAKE_C_LINK_FLAGS " ${COMMON_FLAGS} --sysroot=${SYSROOT}" CACHE INTERNAL "" FORCE)
set(CMAKE_CXX_LINK_FLAGS "${COMMON_FLAGS} --sysroot=${SYSROOT}" CACHE INTERNAL "" FORCE)

################ PPSSPP ############
set(CMAKE_BUILD_TYPE "Release")
set(ARM ON)
set(ARMIPS ON)
set(ENABLE_HLSL ON)
set(ENABLE_OPT ON)
set(ENABLE_PCH ON)
set(ENABLE_SPVREMAPPER OFF)
set(HEADLESS OFF)
set(LIBRETRO OFF)
set(LOONGARCH64 OFF)
set(MIPS OFF)
set(MOBILDE_DEVICE OFF)
set(NO_GETADDRINFO OFF)
set(RISCV64 OFF)
set(SIMULATOR OFF)
set(SKIP_GLSLANG_INSTALL ON)
set(SPIRV_CROSS_EXCEPTIONS_TO_ASSERTIONS ON)
set(UPNC_BUILD_STATIC ON)
set(USE_ARMIPS ON)
set(USE_ASAN OFF)
set(USE_CCACHE ON)
set(USE_DISCORD OFF)
set(USE_FFMPEG ON)
set(USE_LIBNX OFF)
set(USE_MINIUPNC ON)
set(USE_NO_MMAP OFF)
set(USE_SYSTEM_FFMPEG OFF)
set(USE_SYSTEM_LIBPNG ON)
set(USE_SYSTEM_LIBSDL2 ON)
set(USE_SYSTEM_LIBZIP OFF)
set(USE_SYSTEM_MINIUPNC OFF)
set(USE_SYSTEM_SNAPPY OFF)
set(USE_SYSTEM_ZSTD OFF)
set(USE_UBSAN OFF)
set(USE_VULKAN_DISPLAY_KHR ON)
set(USE_WAYLAND_WSI OFF)
set(USING_EGL ON)
set(USING_FBDEV ON)
set(USING_GLES2 ON)
set(USING_QT_UI OFF)
set(USING_X11_VULKAN OFF)

