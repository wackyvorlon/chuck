// Synth boilerplate
// Sounds awesome!

SinOsc foo => NRev r => dac;
.4 => foo.gain;
.1=>r.mix;

// array
[ 0, 2, 4, 7 ] @=> int hi[];

while(true) {
    //change params here
    Std.mtof(45+Std.rand2(0,2)*12+hi[Std.rand2(0,hi.cap()-1)]) => foo.freq;
    
    //rate
    120::ms => now;
}
