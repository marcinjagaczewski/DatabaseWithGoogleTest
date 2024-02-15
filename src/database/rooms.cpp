#include <iostream>
#include "rooms.hpp"

namespace room
{
Room::Room(std::string typeName, 
            unsigned int electricitySocketNum,
            unsigned int lampNum,
            unsigned int ethernetSocket,
            LightingControl lightingControl) : 
            m_typName(typeName),
            m_electricitySocketNum(electricitySocketNum),
            m_lampNum(lampNum),
            m_ethernetSocket(ethernetSocket),
            m_lightingControl(lightingControl)
{
}

roomData_t Room::getData()
{
    return {m_typName, 
            m_electricitySocketNum, 
            m_lampNum, 
            m_ethernetSocket, 
            m_lightingControl};
}

void Room::editData(roomData_t newData)
{
    m_typName = newData.typName;
    m_electricitySocketNum = newData.electricitySocketNum;
    m_lampNum = newData.lampNum;
    m_ethernetSocket = newData.ethernetSocket;
    m_lightingControl = newData.lightingControl;
}

}