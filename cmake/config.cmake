
set (Eth_Stealth_VERSION_MAJOR 1)
set (Eth_Stealth_VERSION_MINOR 0)
set (Eth_Stealth_VERSION_PATCH 0)

configure_file (
  "${PROJECT_SOURCE_DIR}/src/config.hpp.in"
  "${PROJECT_BINARY_DIR}/config.hpp"
)
