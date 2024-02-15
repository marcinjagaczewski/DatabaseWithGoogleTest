#pragma once

#include <string>
#include <gmock/gmock.h>
#include "../../../src/database/include/roomsIntf.hpp"

using namespace roomInterface;

class MockRoom :public RoomInterface
{
    public:
	    MOCK_METHOD(roomData_t, getData, (), (override));
	    MOCK_METHOD(void, editData, (roomData_t), (override));
};