#pragma once
#include <vector>
#include "rooms.hpp"
#include "include/roomsIntf.hpp"

namespace database{

class dataBase{
    public: 
        dataBase();
        bool addRecord(roomInterface::roomData_t room);
        bool removeRecord(std::string typName);
        bool editRecord(std::string typName, roomInterface::roomData_t);
        [[nodiscard]]roomInterface::roomData_t seekRecord(std::string typName);
        std::vector<roomInterface::roomData_t> showRecords();
    private:
        std::vector<std::unique_ptr<roomInterface::RoomInterface>> m_records;
};

}
