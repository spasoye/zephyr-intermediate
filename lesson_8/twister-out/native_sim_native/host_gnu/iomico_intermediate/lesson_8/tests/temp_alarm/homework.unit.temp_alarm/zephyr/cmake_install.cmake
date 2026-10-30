# Install script for directory: /home/ivan/projects/zephyr_workbench/deps/zephyr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/zephyr/soc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/acpica/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/cmsis-dsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/cmsis-nn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/cmsis_6/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/dhara/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/adi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_afbr/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_ambiq/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/atmel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_bouffalolab/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_espressif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_ethos_u/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_gigadevice/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_infineon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_intel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/microchip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/nuvoton/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_nxp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/openisa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/quicklogic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_realtek/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_renesas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_rpi_pico/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_sifli/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_silabs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_stm32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_tdk/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_telink/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/ti/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_wch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/xtensa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/hostap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/libmctp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/libsbc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/lora-basics-modem/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/nanopb/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/nrf_wifi/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/percepio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/trusted-firmware-a/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/zephyr/cmake/reports/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/ivan/projects/zephyr_workbench/iomico_intermediate/lesson_8/twister-out/native_sim_native/host_gnu/iomico_intermediate/lesson_8/tests/temp_alarm/homework.unit.temp_alarm/zephyr/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
