#include "fileManager.hpp"
#include <sys/stat.h>
#include <unistd.h>
#include <string>
#include <fstream>

namespace fileManager
{
    FileManager::FileManager(std::string nameFile)
    {
        m_file.open(nameFile, std::ios::in | std::ios::out);

        if (m_file.is_open())
        {
            printf(">>File %s has beed opened!\n", nameFile.c_str());
        }
        else
        {
            m_file.open(nameFile, std::ios::in | std::ios::out | std::ios::trunc);
            if (m_file.is_open())
            {
                printf(">>File %s has been created\n", nameFile.c_str());
            }
            else
            {
                printf(">>File %s doesn't can be create. Something is wrong!\n", nameFile.c_str());
            }
        }
    }

    bool FileManager::saveData(std::string data)
    {
        m_file << data;
        return true;
    }

    bool FileManager::loadData(std::string &data)
    {
        std::string line;
        m_file.seekg(0);
        while (std::getline(m_file, line))
        {
            data.append(line + "\n");
        }
        return true;
    }

    FileManager::~FileManager()
    {
        m_file.close();
    }
}