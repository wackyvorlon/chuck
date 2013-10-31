// Synth boilerplate
// Sounds awesome!

SinOsc foo => NRev r => Chorus s => dac;
.3 => foo.gain;
0.1=>r.mix;
0.1=>s.mix;
0.75=>s.modDepth;
5=>s.modFreq;
// array
[ 0, 2, 4, 7 ] @=> int hi[];

while(true) {
    //change params here
    Std.mtof(45+Std.rand2(0,2)*12+hi[Std.rand2(0,hi.cap()-1)]) => foo.freq;
    
    //rate
    200::ms => now;
}
