/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"

using namespace c74::min;


class wkw_buffsort_tilde : public object<wkw_buffsort_tilde> {
public:
    MIN_DESCRIPTION    {"Sort buffer of given length with a ."};
    MIN_TAGS        {"buffer, sorting"};
    MIN_AUTHOR        {"Cycling '74"};
    MIN_RELATED        {"buffer~"};

    inlet<>     input_on    { this, "(1/0) On/Off" };
    inlet<>     input_del   { this, "(float) delay rate" };
    inlet<>     input_size  { this, "(int) buffer length in samps" };
    outlet<>    output      { this, "(bang) bang when done" };
    
    
    int on_flag;
    int sorted_flag;
    int i;

    // add buffer reference
    buffer_reference buffer { this,
        MIN_FUNCTION {
            return {};
        }
    };
    
    message<> maxclass_setup { this, "maxclass_setup",
        MIN_FUNCTION {
            on_flag = 0;
            sorted_flag = 0;
            i = 0;
            return {};
        }
    };
    
    timer<> metro { this,
        MIN_FUNCTION {
            if (on_flag == 1) {
                bubbleSort();
                metro.delay(delay);
            }
            return{};
        }
    };
    
    
    // set buffer using the name provided
    argument<symbol> name_arg { this, "buffer-name", "Buffer name.",
        MIN_ARGUMENT_FUNCTION {
            buffer.set(arg);
        }
    };

    // sorting delay
    attribute<double> delay { this, "delay", 0.,
        description {
            "Delay of index scrolling. "
            "Value of index will be updated with a given delay."
        }
    };

    //turn on sorting
    message<> number { this, "number",
        MIN_FUNCTION {
            if(inlet == 0) {
            on_flag = args[0];
            if (on_flag != 0) metro.tick();
            else if (on_flag == 0) metro.stop();
            } else if (inlet == 1) {
                delay = args[0];
            }
            return{};
            }
        
    };
    
    
    
    
    //sorting algorithm
    void bubbleSort() {
        buffer_lock<> b {buffer};
        
        if (b.valid()) {
            if (b.lookup(i) > b.lookup(i+1)) {
                auto temp = b.lookup(i);
                b.lookup(i) = b.lookup(i+1);
                b.lookup(i+1) = temp;
                sorted_flag = 0; //change flag if swap was needed
                b.dirty();
            }
            
            if (i++ == b.frame_count()-2){
                if (sorted_flag){
                    output.send("bang");
                }
                i = 0;
                sorted_flag = 1;
            }
        }
        
        b.~buffer_lock();
    }
    

    

   
};


MIN_EXTERNAL(wkw_buffsort_tilde);
