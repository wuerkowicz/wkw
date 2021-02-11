/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include <random>
#include <cfloat>

using namespace c74::min;


class wkw_noisfill_tilde : public object<wkw_noisfill_tilde> {
public:
    MIN_DESCRIPTION    {"Post to the Max Console."};
    MIN_TAGS        {"utilities"};
    MIN_AUTHOR        {"Cycling '74"};
    MIN_RELATED        {"print, jit.print, dict.print"};

    inlet<>  input    { this, "(bang) bang to fill" };
    outlet<> output    { this, "(bang) bang when done" };


    //add buffer reference
    buffer_reference buffer { this,
        MIN_FUNCTION {
            return {};
        }
    };
    
    //set buffer using the name provided
    argument<symbol> name_arg { this, "buffer-name", "Buffer name.",
        MIN_ARGUMENT_FUNCTION {
            buffer.set(arg);
        }
    };


    // respond to the bang message to fill
    message<> bang { this, "bang", "Fill the buffer with random values",
        MIN_FUNCTION {
            buffer_lock<> b {buffer};
            for (auto i = 0; i < b.frame_count(); i++) {
                b.lookup(i) = randDouble();
            }
            b.dirty();
            
            output.send("bang"); //bang when done
            return {};
        }
    };
    
    double randDouble() {
        std::random_device rd;
        std::mt19937 mt(rd());
        std::uniform_real_distribution<double> dist(-1., std::nextafter(1., DBL_MAX));
        return dist(mt);
    }
    



};


MIN_EXTERNAL(wkw_noisfill_tilde);
