// Assignment_1_A30SecondComposition3


// Routing of signal
SawOsc d => Gain g => dac;

0.2 => d.gain;
// Ha ha! Got rid of the click!
1 => g.gain;

/*
 * g allows us a central place to control the gain of the patch.
 * I used it to give a nice, tapering volume.
 * No more clicks!
 */

// Set how long our composition should run.
140 => int e;

// Temporary storage for the MIDI note number
int f;

// Iterate over the notes 
for (int c;e>=0;c+3=>c) {
    // Delay for note to sound.
    150::ms => now;
    if (c>15) 0 => c; // Have we played all the notes? If so, start over
    
    // Create the note number.
    // This is magic, but seems to sound okay.
    50+Math.abs(((c*(3*c+2))/(-(c*c)-c+1)))=>f;
    //50+((c*(3*c+2))/(-(c*c)-c+1))=>f;
    
    // An unfortunate quirk of this math is that it outputs
    // 48 twice. This if() statement substitutes a different note.
    if (f==52) f+(c/3) => f;
    // Output note number for diagnostics.
    <<<f>>>;
    // Convert note number to frequency.
    Std.mtof(f) => d.freq;
    // If value of c is even, add a little delay.
    // Adds a nice little bit of syncopation.
    if ((c/2)*2==c) 100::ms => now;
    /*
     * The above works by dividing by two, then multiplying by two.
     * If a number is odd, like 3, when divided by two you get 1.5.
     * Since c is an int, if c=3, and we divide c by 2, we get 1 
     * instead of 1.5. 1*2 gives us 2, which differs from 3.
     * The if() statement doesn't add a delay.
     * Now, if c=6, 6/2=3. 3 multiplied by 2 is also six, so
     * the delay is added.
     */
     
    e--; // Count down to loop completion.
    
}


/*
 * I didn't like the way the sound just stopped.
 * Thus, I wrote a loop to taper the gain
 * down over time. 
 *
 */
for (1=>float f;f>=0;f-0.001=>f) {
    f => g.gain;
    2::ms => now;
}

