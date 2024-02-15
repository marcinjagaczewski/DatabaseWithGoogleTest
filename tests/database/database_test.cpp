#include <gtest/gtest.h>
#include "../../src/database/rooms.hpp"
#include "../../src/database/database.hpp"

#include "../../src/database/dummy.hpp"
#include "../../src/database/foo_if.hpp"
#include "../../src/database/foo.hpp"
#include "../../src/database/include/roomsIntf.hpp"
#include "mockFoo.hpp"
#include "include/roomMock.hpp"

using namespace database;
// using namespace roomInterface;

// class myTestFixture: public testing::Test { 
// public: 
//    myTestFixture( ) { 
//     // initialization code here
//     // This function will be called again for each test of beginning
// 	// testDummy will be null for each test
//     std::cout<<"testDummy is null "<<(mTestDummy == nullptr)<<std::endl;
// 	mTestDummy = std::make_unique<dummy>(mMockFoo);
//    } 

//    void SetUp( ) { 
//        // code here will execute just before the test ensues 
//    }

//    void TearDown( ) { 
//        // code here will be called just after the test completes
//        // ok to through exceptions from here if need be
//    }

//    ~myTestFixture( )  { 
//        // cleanup any pending stuff, but no exceptions allowed
//    }

//    mockFoo mMockFoo;
//    std::unique_ptr<dummy> mTestDummy;
//    // put in any custom data members that you need 
// };


// TEST_F (myTestFixture, TestDummyInt) { 

// 	std::string testString {"testString"};
// 	EXPECT_CALL(mMockFoo, fooInt(testing::_)).Times(1).WillOnce(testing::Return(testString.size()));
// 	int result = mTestDummy->dummyInt(testString);
	
// 	ASSERT_EQ(result,testString.size());
// }

class database_test: public testing::Test
{
    public:
        database_test()
        {
            db = std::make_unique<database::dataBase>();
            room.typName = "Bedroom"; 
            room.electricitySocketNum = 4;
            room.lampNum = 2;
            room.ethernetSocket = 1;
            room.lightingControl = roomInterface::LightingControl::True;
        }

        void SetUp( ) { 
            // code here will execute just before the test ensues 
        }

        void TearDown( ) { 
            // code here will be called just after the test completes
            // ok to through exceptions from here if need be
        }

        ~database_test( )  { 
            db.reset();
            // cleanup any pending stuff, but no exceptions allowed
        }

        std::unique_ptr<database::dataBase> db;
        roomInterface::roomData_t room;
};

TEST_F(database_test, addMember) {

    EXPECT_TRUE(db->addRecord(room));
}

TEST_F(database_test, addExistingMember) {

    EXPECT_TRUE(db->addRecord(room)); 
    EXPECT_FALSE(db->addRecord(room));    
}

TEST_F(database_test, addMemberWithoutTypeName) {

    room.typName = "";

    EXPECT_FALSE(db->addRecord(room));    
}

TEST_F(database_test, removeMember) {

    EXPECT_TRUE(db->addRecord(room)); 

    EXPECT_TRUE(db->removeRecord("Bedroom"));    
}

TEST_F(database_test, removeNotExistsMember) {

    EXPECT_TRUE(db->addRecord(room)); 
    EXPECT_FALSE(db->removeRecord("Bathroom"));
}

TEST_F(database_test, editExistsMember) {

    roomInterface::roomData_t changedData;
    EXPECT_TRUE(db->addRecord(room)); 

    changedData.typName = "Bedroom upstair";
    changedData.electricitySocketNum = 5;
    changedData.lampNum = 4;
    changedData.ethernetSocket = 2;
    changedData.lightingControl = roomInterface::LightingControl::False;

    EXPECT_TRUE(db->editRecord("Bedroom", changedData));
}

TEST_F(database_test, doNotEditIfRecordDoesNotExists) {

    roomInterface::roomData_t changedData;
    EXPECT_TRUE(db->addRecord(room)); 

    changedData.typName = "Bedroom upstair";
    changedData.electricitySocketNum = 5;
    changedData.lampNum = 4;
    changedData.ethernetSocket = 2;
    changedData.lightingControl = roomInterface::LightingControl::False;

    EXPECT_FALSE(db->editRecord("Bedroom downstair", changedData));
}

TEST_F(database_test, seekExistingRecord) {

    roomInterface::roomData_t changedData;
    EXPECT_TRUE(db->addRecord(room)); 

    auto expect = db->seekRecord("Bedroom");

    EXPECT_EQ(expect.typName, room.typName);
    EXPECT_EQ(expect.electricitySocketNum, room.electricitySocketNum);
    EXPECT_EQ(expect.ethernetSocket, room.ethernetSocket);
    EXPECT_EQ(expect.lampNum, room.lampNum);
    EXPECT_EQ(expect.lightingControl, room.lightingControl);
}

TEST_F(database_test, seekDoNotExistingRecord) {

    roomInterface::roomData_t changedData;
    EXPECT_TRUE(db->addRecord(room)); 
    
    auto expect = db->seekRecord("Bedroom upstair");

    EXPECT_NE(expect.typName, room.typName);
    EXPECT_NE(expect.electricitySocketNum, room.electricitySocketNum);
    EXPECT_NE(expect.ethernetSocket, room.ethernetSocket);
    EXPECT_NE(expect.lampNum, room.lampNum);
    EXPECT_NE(expect.lightingControl, room.lightingControl);
}

TEST_F(database_test, showAllRecords) {

    roomInterface::roomData_t changedData;
    std::vector<roomInterface::roomData_t> expectedDatas{};
    std::vector<roomInterface::roomData_t> receivedDatas{};

    EXPECT_TRUE(db->addRecord(room)); 
    expectedDatas.emplace_back(room);

    room.typName = "Bathroom"; 
            room.electricitySocketNum = 2;
            room.lampNum = 4;
            room.ethernetSocket = 0;
            room.lightingControl = roomInterface::LightingControl::True;
    
    EXPECT_TRUE(db->addRecord(room)); 
    expectedDatas.emplace_back(room);
    
    receivedDatas = db->showRecords();
}