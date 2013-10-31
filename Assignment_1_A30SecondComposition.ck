// Assignment_1_A30SecondComposition


// Routing of signal
TriOsc d => SinOsc a => NRev b => Gain g => dac;

/*
 * Basically, we are using d to control the frequency of a.
 * The greater d's gain, the more a's frequency changes
 * per cycle of d. Then we make a's frequency change faster
 * and slower to make interesting sounds.
 * This idea appears in the fm examples that come with chuck.
 */

// Frequency of carrier
440 => a.freq;

// Master gain control
2 => g.gain;

// How much reverb would you like in your coffee today?
.1 => b.mix;

// Gain of carrier, affects final output volume
2 => a.gain;

/* 
 * Functions as modulation index,
 * controlling how great the swing in frequency
 * of our carrier should be.
 */
150 => d.gain;



// Set how long our composition should run.
60 => int e;


// A chord, borrowed from Ge Wang's video
[ 45, 47, 49, 52 ] @=> int notes[];

// Iterate over the notes in the chord
for (int c;e>=0;c++) {
    500::ms => now;
    if (c>3) 0 => c; // Have we played all the notes? If so, start over
    <<<e>>>;
    // Convert the midi note numbers to frequencies
    Std.mtof(notes[c]) => d.freq; 
    e--;
    
}


/*
 * I didn't like the way the sound just stopped.
 * Thus, I wrote a loop to taper the gain of a
 * down over time. I think it makes it sound a bit better,
 * though I still get a loud click when the shred ends.
 *
 */
for (2=>float f;f>=0;f-0.01=>f) {
    f => g.gain;
    20::ms => now;
}