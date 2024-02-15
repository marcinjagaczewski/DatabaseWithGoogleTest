#include "database.hpp"

namespace database
{

dataBase::dataBase()
{
}

bool dataBase::addRecord(roomInterface::roomData_t room)
{
    if(room.typName.empty())
    {
        printf("typname is empty during add new member\n");
        return false;
    }

    for(const auto &record : m_records)
    {
        if(record->getData().typName == room.typName)
        {
            printf("Typname exists. Please change name's room\n");
            return false;
        }
    }

    std::unique_ptr<roomInterface::RoomInterface> tmp = std::make_unique<room::Room>(room.typName, room.electricitySocketNum, room.lampNum, room.ethernetSocket, room.lightingControl); 

    m_records.emplace_back(std::move(tmp));

    printf("Added new record: %s\n", room.typName.c_str());

    return true;
}

bool dataBase::removeRecord(std::string typName)
{
    auto iteration = std::find_if(m_records.begin(), m_records.end(), [typName](const std::unique_ptr<roomInterface::RoomInterface>& data){return data->getData().typName == typName;});

    if(iteration != m_records.end())
    {
        m_records.erase(iteration);
        printf("Record: %s is removed\n", typName.c_str());
        return true;
    }

    printf("The record: %s doesn't exists and can't be remove\n", typName.c_str());

    return false;
}

bool dataBase::editRecord(std::string typName, roomInterface::roomData_t data)
{
    auto iteration = std::find_if(m_records.begin(), m_records.end(), [&typName](const std::unique_ptr<roomInterface::RoomInterface>& data){return data->getData().typName == typName;});

    if(iteration != m_records.end())
    {
        (*iteration)->editData(data);
        printf("Record: %s has been edited\n", typName.c_str());
        return true;
    }
    
    printf("The record: %s haven't edited because it doesn't exists\n", typName.c_str());
    return false;
}

roomInterface::roomData_t dataBase::seekRecord(std::string typName)
{
    roomInterface::roomData_t empty{"",0,0,0,roomInterface::LightingControl::False};
    auto iteration = std::find_if(m_records.begin(), m_records.end(), [&typName](const std::unique_ptr<roomInterface::RoomInterface>& data){return data->getData().typName == typName;});
    
    if(iteration != m_records.end())
    {
        return (*iteration)->getData();
    }

    return empty;
}

std::vector<roomInterface::roomData_t> dataBase::showRecords()
{
    std::vector<roomInterface::roomData_t> tmp{};

    for(const auto &record : m_records)
    {
        tmp.emplace_back((*record).getData());
    }

    return tmp;
}

}

