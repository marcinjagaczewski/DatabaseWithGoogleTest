#pragma once

#include <string>
#include <memory>
#include "include/roomsIntf.hpp"

namespace room
{
    using namespace roomInterface;

    class Room : public RoomInterface
    {
        public:
            explicit Room(std::string typeName, unsigned int electricitySocketNum, unsigned int lampNum, unsigned int ethernetSocket, LightingControl lightingControl);
            roomData_t getData() override;
            void editData(roomData_t newData) override;
            
        private: 
            std::string m_typName;
            unsigned int m_electricitySocketNum;
            unsigned int m_lampNum;
            unsigned int m_ethernetSocket;
            LightingControl m_lightingControl;
    };
}