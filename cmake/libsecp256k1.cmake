include(ExternalProject)

ExternalProject_Add(
  libsecp256k1
  SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/secp256k1
  CONFIGURE_COMMAND  ./autogen.sh && ./configure --prefix=${CMAKE_BINARY_DIR}/secp256k1 --disable-shared 
  BUILD_COMMAND make
  BUILD_IN_SOURCE 1
)



