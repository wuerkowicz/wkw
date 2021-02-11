/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"

using namespace c74::min;


class wkw_buffempt_tilde : public object<wkw_buffempt_tilde> {
public:
    MIN_DESCRIPTION	{"Post to the Max Console."};
    MIN_TAGS		{"utilities"};
    MIN_AUTHOR		{"Cycling '74"};
    MIN_RELATED		{"print, jit.print, dict.print"};

    inlet<>  input	{ this, "(bang) clear buffer" };
    outlet<> output	{ this, "(bang) bang when done" };


    buffer_reference buffer { this,
        MIN_FUNCTION {
            return {};
        }
    };
    
    argument<symbol> name_arg { this, "buffer-name", "Buffer name.",
        MIN_ARGUMENT_FUNCTION {
            buffer.set(arg);
        }
    };


    // respond to the bang message to do something
    message<> bang { this, "bang", "Empty the buffer",
        MIN_FUNCTION {
            buffer_lock<> b {buffer};
            for (auto i = 0; i < b.frame_count(); i++) {
//                b.lookup(i) = -1./ + static_cast <float> (rand()) /( static_cast <float> (RAND_MAX/(1.-(-1.))));
                b.lookup(i) = 0.;
            }
            b.dirty();
            
            
            output.send("bang");
            return {};
        }
    };
    


};



MIN_EXTERNAL(wkw_buffempt_tilde);
