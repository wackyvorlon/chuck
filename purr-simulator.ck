// Purr simulator
// Paul Anderson

/*
 * From my reading, purring consists of two phases:
 * - ingressive
 * - egressive
 *
 * These are based on inhalation vs. exhalation. For the 
 * common domestic cat, the frequencies are:
 * - egressive, 20.94HZ - 27.21Hz
 * - ingressive, 23.0 - 26.09Hz
 *
 * In cheetahs, egressive phase was found to be longer than ingressive.
 * The goal is to change the frequency, increase gain
 * followed by dropping gain, change, etc.
 *
 * This makes the transition smoother. It kind of captures
 * the feel, but needs work.
 */
 

TriOsc a => LPF b => dac;

200 => b.freq;
2 => b.gain;

// Set our max gain
2 => float maxgain;
maxgain => a.gain;

// Now our minimum gain
0.02 => float mingain;

// Egressive phase duration
1300::ms => dur egressive;

// Ingressive phase duration
egressive*0.75 => dur ingressive;

//maxgain/0.01 => float divided;

// Time required per iteration of egressive gain loop
// 
egressive/((maxgain/0.01)*2) => dur edelay;

ingressive/((maxgain/0.01)*2) => dur idelay;

while(true) {
    // Egressive phase
    (Math.randomf()*5)+21.98 => a.freq;
    
    // Gradually change the gain
    // Loop requires maxgain/0.01 iterations to complete
    for (mingain=>float i; i<=maxgain; i+0.01=>i) {
        i=>a.gain;
        (Math.randomf()*edelay)+edelay => now;
    }
    // Loop requires mingain/0.01 iterations
    for (maxgain=>float i; i>mingain; i-0.01=>i) {
        i => a.gain;
        edelay => now;
    }
     
    // Begin ingressive phase 
    (Math.randomf()*7)+23.24 => a.freq;
    
    // Again we gradually shift the gain
    for (mingain=>float i; i<=(maxgain*0.9); i+0.01=>i) {
        i=>a.gain;
        (Math.randomf()*idelay)+idelay=>now;
    }
    
    for ((maxgain*0.9)=>float i; i>mingain; i-0.01=>i) {
        i => a.gain;
        idelay=>now;
    }
    <<< "Completed purr cycle" >>>;
}