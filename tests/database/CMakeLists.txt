enable_testing()

add_executable(
    main_test
    main_test.cpp
    database_test.cpp
    rooms_test.cpp
    fileManager_test.cpp
    ../../src/database/fileManager.cpp
    ../../src/database/database.cpp
    ../../src/database/rooms.cpp
    ../../src/database/foo.cpp
    ../../src/database/dummy.cpp
)

target_link_libraries(
    main_test
    GTest::gtest_main
    GTest::gmock_main
)

include(GoogleTest)
gtest_discover_tests(main_test)