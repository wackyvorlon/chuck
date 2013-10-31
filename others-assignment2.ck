SawOsc xave => NRev r => Chorus s => dac;.3 => xave.gain;
0.1=>r.mix;
0.1=>s.mix;
0.75=>s.modDepth;
5=>s.modFreq;

float x, y;

for (1 => int p; p <= 8; p++) {
    
    //generate a base frequency
    Std.rand2f(110, 220) => float base;
    
    //generate an 8-note arpeggio-like structure from the base freq
    for (1 => int c; c <= 16; c++) {
        
        //ensure it plays a different tone than immediately prior
        while (x == y) {
            Std.rand2(1, 6) => x;
        }
        
        x * base => xave.freq;
        0.15::second => now;
        x => y;
    }
}