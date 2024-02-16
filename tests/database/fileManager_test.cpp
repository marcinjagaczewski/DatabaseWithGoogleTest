#include <gtest/gtest.h>
#include "../../src/database/fileManager.hpp"

using namespace fileManager;

class FileManagerTest : public testing::Test
{   
    public:
        FileManagerTest()
        {
            fm = std::make_unique<fileManager::FileManager>("testFile");
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

        std::unique_ptr<fileManager::FileManager> fm;
};

TEST_F(FileManagerTest, saveDataToFile)
{
    std::string data = "Bedroom|4|2|1|YES\nKitchen|5|4|0|YES\n";
    EXPECT_TRUE(fm->saveData(data));
}

TEST_F(FileManagerTest, loadDataFromFile)
{
    std::string expect = "Bedroom|4|2|1|YES\nKitchen|5|4|0|YES\n";
    std::string receive = {};

    fm->loadData(receive);
    EXPECT_EQ(receive, expect);   
}