#pragma once

#include <fstream>
#include <stdio.h>

namespace fileManager
{
    class FileManager
    {
        public:
            explicit FileManager(std::string nameFile);
            ~FileManager();
            bool fileExist();

        private:
            FILE* m_file;
            std::string m_fileName{};
    };    
}