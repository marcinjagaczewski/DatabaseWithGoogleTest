#pragma once

#include <string>
#include "foo_if.hpp"

class dummy
{
	public:
	dummy(fooIf& f):mfoo(f){}
	int dummyInt(std::string& str);

    fooIf& mfoo;
};
