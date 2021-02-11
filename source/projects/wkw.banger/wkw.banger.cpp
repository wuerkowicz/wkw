/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"

using namespace c74::min;


class wkw_banger : public object<wkw_banger> {
public:
    MIN_DESCRIPTION	{"Post to the Max Console."};
    MIN_TAGS		{"utilities"};
    MIN_AUTHOR		{"Cycling '74"};
    MIN_RELATED		{"print, jit.print, dict.print"};

    inlet<>  input	{ this, "(bang)" };
    outlet<> output	{ this, "(bang) pass on the bang" };




    // respond to the bang message to do something
    message<> bang { this, "bang",
        MIN_FUNCTION {
            cout << "bang!" << endl;    // post to the max console
            output.send("bang");       // send out our outlet
            return {};
        }
    };


    // post to max window == but only when the class is loaded the first time
    message<> maxclass_setup { this, "maxclass_setup",
        MIN_FUNCTION {
            cout << "hello I am bagner" << endl;
            return {};
        }
    };

};


MIN_EXTERNAL(wkw_banger);
