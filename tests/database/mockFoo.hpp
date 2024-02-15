#pragma once

#include <string>
#include <gmock/gmock.h>
#include "../../src/database/foo_if.hpp"

class mockFoo : public fooIf
{
	public:
	MOCK_METHOD(int, fooInt, (std::string& str), (override));
};