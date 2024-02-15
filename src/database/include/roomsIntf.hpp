#pragma once
namespace roomInterface
{
    
enum class LightingControl
{
    True,
    False
};

typedef struct roomData_s 
{
    std::string typName;
    unsigned int electricitySocketNum;
    unsigned int lampNum;
    unsigned int ethernetSocket;
    LightingControl lightingControl;
}roomData_t;

class RoomInterface
{
    public: 
        ~RoomInterface() = default;
        virtual roomData_t getData() = 0;
        virtual void editData(roomData_t newData) = 0;
};

}
