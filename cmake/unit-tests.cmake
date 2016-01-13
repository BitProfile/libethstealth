find_package(Boost COMPONENTS system filesystem unit_test_framework REQUIRED)

file(GLOB TEST_SOURCES 
    "test/*.cpp"
)


include_directories(${CMAKE_BINARY_DIR}/secp256k1/include ${CMAKE_SOURCE_DIR}/src)

add_executable(unit-tests ${TEST_SOURCES})
add_dependencies(unit-tests stealthaddress)

target_link_libraries(unit-tests stealthaddress ${Boost_FILESYSTEM_LIBRARY} ${Boost_SYSTEM_LIBRARY} ${Boost_UNIT_TEST_FRAMEWORK_LIBRARY} )
