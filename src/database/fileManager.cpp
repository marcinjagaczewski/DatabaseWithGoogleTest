#include "fileManager.hpp"
#include <sys/stat.h>
#include <unistd.h>
#include <string>
#include <fstream>

namespace fileManager
{
    FileManager::FileManager(std::string nameFile)
    {
        m_fileName = nameFile;
        m_file = fopen(m_fileName.c_str(), "a+");
        if(m_file == nullptr)
        {
            printf("ERROR! Problem with file open");
        }
    }

    FileManager::~FileManager()
    {
        fclose(m_file);
    }
}


