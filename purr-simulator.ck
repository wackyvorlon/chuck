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
 

TriOsc a => dac;

// Set our max gain
1 => float maxgain;
maxgain => a.gain;

// Now our minimum gain
0.02 => float mingain;

// Egressive phase duration
500::ms => dur egressive;

// Ingressive phase duration
egressive*0.75 => dur ingressive;

// Time required per iteration of egressive gain loop
// 
egressive/((maxgain/0.01)*2) => dur eggresive-delay;

while(true) {
    // Egressive phase
    21.98 => a.freq;
    
    // Gradually change the gain
    // Loop requires maxgain/0.01 iterations to complete
    for (mingain=>float i; i<=maxgain; i+0.01=>i) {
        i=>a.gain;
        10::ms=>now;
    }
    // Loop requires mingain/0.01 iterations
    for (maxgain=>float i; i>mingain; i-0.01=>i) {
        i => a.gain;
        10::ms=>now;
    }
     
    // Begin ingressive phase 
    23.24 => a.freq;
    
    // Again we gradually shift the gain
    for (mingain=>float i; i<=maxgain; i+0.01=>i) {
        i=>a.gain;
        5::ms=>now;
    }
    
    for (maxgain=>float i; i>mingain; i-0.01=>i) {
        i => a.gain;
        5::ms=>now;
    }
    <<< "Completed purr cycle" >>>;
}