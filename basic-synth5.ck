// Synth boilerplate
// Sounds awesome!

Brass foo => NRev r => Chorus s => dac;

.3 => foo.gain;
0.1=>r.mix;
0.1=>s.mix;
0.75=>s.modDepth;
5=>s.modFreq;
1=>foo.startBlowing;
// array
[ 0, 2, 4, 7 ] @=> int hi[];

//[ 0, 2, 4, 8 ] @=> int hi[];

while(true) {
    //change params here
    Std.mtof(45+Std.rand2(0,2)*12+hi[Std.rand2(0,hi.cap()-1)]) => foo.freq;
    
    //rate
    200::ms => now;
}
