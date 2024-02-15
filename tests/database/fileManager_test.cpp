#include <gtest/gtest.h>
#include "../../src/database/fileManager.hpp"

using namespace fileManager;

class FileManagerTest : public testing::Test
{   
    public:
        FileManagerTest()
        {
            FileManager fm("testFile");
        };

        ~FileManagerTest()
        {
        };

        void SetUp()
        {
            
        }

        void TearDown()
        {
        }

    private:
};

TEST_F(FileManagerTest, CreateFile)
{
}