add_test( database_test.addMember /home/marcin/projects/DataBase/build/tests/database/main_test [==[--gtest_filter=database_test.addMember]==] --gtest_also_run_disabled_tests)
set_tests_properties( database_test.addMember PROPERTIES WORKING_DIRECTORY /home/marcin/projects/DataBase/build/tests/database SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( database_test.addExistingMember /home/marcin/projects/DataBase/build/tests/database/main_test [==[--gtest_filter=database_test.addExistingMember]==] --gtest_also_run_disabled_tests)
set_tests_properties( database_test.addExistingMember PROPERTIES WORKING_DIRECTORY /home/marcin/projects/DataBase/build/tests/database SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( database_test.addMemberWithoutTypeName /home/marcin/projects/DataBase/build/tests/database/main_test [==[--gtest_filter=database_test.addMemberWithoutTypeName]==] --gtest_also_run_disabled_tests)
set_tests_properties( database_test.addMemberWithoutTypeName PROPERTIES WORKING_DIRECTORY /home/marcin/projects/DataBase/build/tests/database SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( database_test.removeMember /home/marcin/projects/DataBase/build/tests/database/main_test [==[--gtest_filter=database_test.removeMember]==] --gtest_also_run_disabled_tests)
set_tests_properties( database_test.removeMember PROPERTIES WORKING_DIRECTORY /home/marcin/projects/DataBase/build/tests/database SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( database_test.removeNotExistsMember /home/marcin/projects/DataBase/build/tests/database/main_test [==[--gtest_filter=database_test.removeNotExistsMember]==] --gtest_also_run_disabled_tests)
set_tests_properties( database_test.removeNotExistsMember PROPERTIES WORKING_DIRECTORY /home/marcin/projects/DataBase/build/tests/database SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( database_test.editExistsMember /home/marcin/projects/DataBase/build/tests/database/main_test [==[--gtest_filter=database_test.editExistsMember]==] --gtest_also_run_disabled_tests)
set_tests_properties( database_test.editExistsMember PROPERTIES WORKING_DIRECTORY /home/marcin/projects/DataBase/build/tests/database SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( database_test.doNotEditIfRecordDoesNotExists /home/marcin/projects/DataBase/build/tests/database/main_test [==[--gtest_filter=database_test.doNotEditIfRecordDoesNotExists]==] --gtest_also_run_disabled_tests)
set_tests_properties( database_test.doNotEditIfRecordDoesNotExists PROPERTIES WORKING_DIRECTORY /home/marcin/projects/DataBase/build/tests/database SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( database_test.seekExistingRecord /home/marcin/projects/DataBase/build/tests/database/main_test [==[--gtest_filter=database_test.seekExistingRecord]==] --gtest_also_run_disabled_tests)
set_tests_properties( database_test.seekExistingRecord PROPERTIES WORKING_DIRECTORY /home/marcin/projects/DataBase/build/tests/database SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( database_test.seekDoNotExistingRecord /home/marcin/projects/DataBase/build/tests/database/main_test [==[--gtest_filter=database_test.seekDoNotExistingRecord]==] --gtest_also_run_disabled_tests)
set_tests_properties( database_test.seekDoNotExistingRecord PROPERTIES WORKING_DIRECTORY /home/marcin/projects/DataBase/build/tests/database SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( database_test.showAllRecords /home/marcin/projects/DataBase/build/tests/database/main_test [==[--gtest_filter=database_test.showAllRecords]==] --gtest_also_run_disabled_tests)
set_tests_properties( database_test.showAllRecords PROPERTIES WORKING_DIRECTORY /home/marcin/projects/DataBase/build/tests/database SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( roomsTest.check_getData /home/marcin/projects/DataBase/build/tests/database/main_test [==[--gtest_filter=roomsTest.check_getData]==] --gtest_also_run_disabled_tests)
set_tests_properties( roomsTest.check_getData PROPERTIES WORKING_DIRECTORY /home/marcin/projects/DataBase/build/tests/database SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( roomsTest.check_editData /home/marcin/projects/DataBase/build/tests/database/main_test [==[--gtest_filter=roomsTest.check_editData]==] --gtest_also_run_disabled_tests)
set_tests_properties( roomsTest.check_editData PROPERTIES WORKING_DIRECTORY /home/marcin/projects/DataBase/build/tests/database SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( FileManagerTest.CreateFile /home/marcin/projects/DataBase/build/tests/database/main_test [==[--gtest_filter=FileManagerTest.CreateFile]==] --gtest_also_run_disabled_tests)
set_tests_properties( FileManagerTest.CreateFile PROPERTIES WORKING_DIRECTORY /home/marcin/projects/DataBase/build/tests/database SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( main_test_TESTS database_test.addMember database_test.addExistingMember database_test.addMemberWithoutTypeName database_test.removeMember database_test.removeNotExistsMember database_test.editExistsMember database_test.doNotEditIfRecordDoesNotExists database_test.seekExistingRecord database_test.seekDoNotExistingRecord database_test.showAllRecords roomsTest.check_getData roomsTest.check_editData FileManagerTest.CreateFile)