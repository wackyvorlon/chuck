// Fibonacci series
SinOsc s => dac;

0 => int first;
1 => int sec;
int third;

while(true) {
    first + sec => third;
    
    // Rapidly grows beyond the midi scale, so we reset when it does.
    /*if (third >= 127) {
        0 => first;
        1 => sec;
        1 => third;
    }*/
    //Std.mtof(third) => s.freq;
    third => s.freq;
    sec => first;
    third => sec;
    <<< third >>>;
    500::ms => now;
}