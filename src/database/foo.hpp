#pragma once

#include <string>
#include "foo_if.hpp"

class foo : public fooIf
{
	public:
	int fooInt(std::string& str);

};