/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "c74_min.h"
#include <algorithm>
#include <random>
#include <cfloat>
using namespace c74::min;


class wkw_buffsort_tilde : public object<wkw_buffsort_tilde> {
public:
    MIN_DESCRIPTION    {"Sort samples in buffer of given length using a chosen algorithm."};
    MIN_TAGS        {"buffer, sorting algorithms"};
    MIN_AUTHOR        {"wuerkowicz"};
    MIN_RELATED        {"buffer~"};

    inlet<>     input_on    { this, "(int) non-zero toggles sorting/(bang) restarts" };
    inlet<>     input_del   { this, "(float) delay rate" };
    inlet<>     input_loop  { this, "(1/0) toggle looop" };
    outlet<>    output      { this, "(bang) bang when done" };
    
    
    int on_flag;
    int sorted_flag;
    int loop_flag;
    bool done;
    int i;
    int size;

    
    
    
    // add buffer reference
    buffer_reference buffer { this,
        MIN_FUNCTION {
            return {};
        }
    };
    
    
    //setup flags and the index
    message<> maxclass_setup { this, "maxclass_setup",
        MIN_FUNCTION {
            setup();
            on_flag = 0;
            loop_flag = 0;
            return {};
        }
    };
    
    
    void setup() {
        done = false;
        i = 0;
        size = 1;
    }
    
    //reset the above if banged
    message<> bang { this, "bang", "Notify changes had been made.",
        MIN_FUNCTION {
            if (inlet == 0) {
                setup();
                if (on_flag != 0)
                    metro.tick();
            } else {
                fill();
                setup();
                if (on_flag != 0)
                    metro.tick();
            }
            return {};
        }
    };
    
    
    // sorting delay attribute
    attribute<double> delay { this, "delay", 0.,
        description {
            "Delay of index scrolling. "
            "Value of index will be updated with a given delay."
        }
    };
    
    
    // set buffer using the name provided
    argument<symbol> name_arg { this, "buffer-name", "Buffer name.",
        MIN_ARGUMENT_FUNCTION {
            buffer.set(arg);
        }
    };
    

    
    timer<> metro { this,
        MIN_FUNCTION {
            if (!done){
                if (on_flag == 1) {
                    bubbleSort();
                    metro.delay(delay);
                } else if (on_flag == 2) {
                    selectionSort();
                    metro.delay(delay);
                } else if (on_flag == 3) {
                    mergeSort();
                    metro.delay(delay);
                }
            } else if (done && loop_flag) {
                fill();
                setup();
                metro.delay(delay);
            }
            return{};
        }
    };
    

    //turn on sorting
    message<> number { this, "number",
        MIN_FUNCTION {
            if(inlet == 0) {
                on_flag = args[0];
                if (on_flag != 0)   metro.tick();
                else if (on_flag == 0)  metro.stop();
            }
            else if (inlet == 1) {
                    delay = args[0];
            } else {
                loop_flag = args[0];
                if (done && loop_flag) {
                    fill();
                    setup();
                    metro.tick();
                }
            }
            return{args[0]};
            }
        
    };
    
    
    
    // actual sorting algorithms
    
    
    //bubble sort
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
                    done = true;
                    metro.stop();
                    output.send("bang");
                }
                i = 0;
                sorted_flag = 1;
            }
        }
    }
    
    
    //selection sort
    void selectionSort() {
        buffer_lock<> b {buffer};
        auto min = i;
        if (b.valid()){
                for (auto j = min+1; j < b.frame_count(); j++) {
                    if (b.lookup(j) < b.lookup(min)) {
                        min = j;
                    }
                }
                //swap if needed
                if (min != i) {
                    auto temp = b.lookup(i);
                    b.lookup(i) = b.lookup(min);
                    b.lookup(min) = temp;
                    b.dirty();
                }
                //increment index
                if (i < b.frame_count() - 1) {
                    i++;
                }
                else {
                    done = true;
                    metro.stop();
                    output.send("bang");
                }
            }
    }
    
    //merge sort
    void mergeSort() {
        buffer_lock<> b {buffer};
        if (b.valid()) {
            int n = b.frame_count();
            double buf[n];
            for (int leftStart = 0; leftStart < n; leftStart += 2*size) {
                  int left = leftStart,
                      right = fmin((left + size), n),
                      leftLimit = right,
                      rightLimit = fmin((right + size), n),
                      i = left;
                  while (left < leftLimit && right < rightLimit) {
                    if (b.lookup(left) <= b.lookup(right)) {
                      buf[i++] = b.lookup(left++);
                    } else {
                        buf[i++] = b.lookup(right++);
                    }
                  }
                  while (left < leftLimit) {
                      buf[i++] = b.lookup(left++);
                  }
                  while (right < rightLimit) {
                      buf[i++] = b.lookup(right++);
                  }
                }
            double temp[n];
            for(auto j = 0; j < n; j++) {
                temp[j] = b.lookup(j);
            }
            for(auto j = 0; j < n; j++) {
                b.lookup(j) = buf[j];
            }
            for(auto j = 0; j < n; j++) {
                    buf[j] = temp[j];
            }
            b.dirty();
                if (size < n) {
                    size *= 2;
                } else {
                    done = true;
                    metro.stop();
                    output.send("bang");
                }
        }
    }
    

    void fill() {
        buffer_lock<> b {buffer};
        if (b.valid()) {
            for (auto i = 0; i < b.frame_count(); i++) {
                b.lookup(i) = randDouble(); //fill the current index with random value
            }
            b.dirty(); //modified flag
            done = false;
        }
    }
    
    
    // calculate a random double from the range [-1, 1]
    double randDouble() {
        std::random_device rd;
        std::mt19937 mt(rd());
        std::uniform_real_distribution<double> dist(-1., std::nextafter(1., DBL_MAX));
        return dist(mt);
    }
};


MIN_EXTERNAL(wkw_buffsort_tilde);
