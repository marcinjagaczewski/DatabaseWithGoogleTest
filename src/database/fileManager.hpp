#pragma once

#include <fstream>
#include <stdio.h>

namespace fileManager
{
    class FileManager
    {
        public:
            explicit FileManager(std::string nameFile);
            bool saveData(std::string data);
            bool loadData(std::string &data);

            ~FileManager();

        private:
            std::fstream m_file;
    };
}