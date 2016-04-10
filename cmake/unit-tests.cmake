find_package(Boost COMPONENTS system filesystem unit_test_framework random REQUIRED)
find_package(CryptoPP REQUIRED)
find_package(EthCrypto REQUIRED)
find_package(JsonCPP REQUIRED)

if(ENABLE_GMP)
    find_package(GMP)
endif()

file(GLOB TEST_SOURCES 
    "test/*.cpp"
)


include_directories(${Boost_INCLUDE_DIRS} ${CRYPTOPP_INCLUDE_DIR} ${JSONCPP_INCLUDE_DIR} ${ETHCRYPTO_INCLUDE_DIR} ${CMAKE_CURRENT_SOURCE_DIR}/src)

add_executable(ethstealth-tests ${TEST_SOURCES})
add_dependencies(ethstealth-tests ethstealth)

target_link_libraries(ethstealth-tests ethstealth ${ETHCRYPTO_LIBRARY} ${Boost_FILESYSTEM_LIBRARY} ${Boost_SYSTEM_LIBRARY} ${Boost_UNIT_TEST_FRAMEWORK_LIBRARY} ${Boost_RANDOM_LIBRARY} ${CRYPTOPP_LIBRARY} ${JSONCPP_LIBRARY})

if(GMP_LIBRARIES)
    target_link_libraries(ethstealth-tests ${GMP_LIBRARIES})
endif()
