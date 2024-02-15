#include <gtest/gtest.h>
#include "../../src/database/rooms.hpp"

namespace roomInterface{
    bool operator==( const roomData_t& lh, const roomData_t& rh ) {
        return std::make_tuple( lh.typName, lh.electricitySocketNum, lh.lampNum, lh.ethernetSocket, lh.lightingControl ) == std::make_tuple( rh.typName, rh.electricitySocketNum, rh.lampNum, rh.ethernetSocket, rh.lightingControl );
    }
}

class roomsTest : public testing::Test
{   
    public:
        roomsTest()
        {
            room = std::make_unique<room::Room>(
                        "Bedroom",
                        4,
                        2,
                        1,
                        roomInterface::LightingControl::True
                        );
        };

        ~roomsTest()
        {
        };

        void SetUp()
        {
        }

        void TearDown()
        {
        }

        std::unique_ptr<room::Room> room;
    private:
};

TEST_F(roomsTest, check_getData) {
    roomInterface::roomData_t expect{"Bedroom",
        4,
        2,
        1,
        roomInterface::LightingControl::True};

    roomInterface::roomData_t contain = room->getData();

    EXPECT_EQ(contain, expect);
}

TEST_F(roomsTest, check_editData)
{
    roomInterface::roomData_t contain = room->getData();
    roomInterface::roomData_t newData{"Bedroom upstairs", 5, 4, 2, roomInterface::LightingControl::False};

    room->editData(newData);

    EXPECT_NE(contain.typName, newData.typName);
    EXPECT_NE(contain.electricitySocketNum, newData.electricitySocketNum);
    EXPECT_NE(contain.lampNum, newData.lampNum);
    EXPECT_NE(contain.ethernetSocket, newData.ethernetSocket);
    EXPECT_NE(contain.lightingControl, newData.lightingControl);
}