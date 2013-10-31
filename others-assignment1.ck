// October 2013
// print the name of the code
<<< "Assignment 1 - first sound experiment in ChucK" >>>;

// sound network
// I will use 3 ocilators in order to be able to play basic chords
// The use of the TriOsc is in order to give a different flavour than the other two SinOsc, but not as grittier than the SqrOsc or the SawOsc
SinOsc s1 => dac;
TriOsc s2 => dac;
SinOsc s3 => dac;

// raise the pitch of oscilator s2 to E4
for( 20 => int i; i < 329.63; i++ )
{
    i => s2.freq;
    0 => s1.gain;
    0.4 => s2.gain;
    0 => s3.gain;
    .01::second => now;
}
// and play the note E4
0 => s1.gain;
0.4 => s2.gain;
0 => s3.gain;
329.63 => s2.freq;
1.5:: second => now;

// Play a II - V - I chord progression in C major
// D minor (II)
0.3 => s1.gain;
0.3 => s2.gain;
0.3 => s3.gain;
293.66 => s1.freq;
349.23 => s2.freq;
440.00 => s3.freq;
2:: second => now;

// G major (V)
0.3 => s1.gain;
0.3 => s2.gain;
0.3 => s3.gain;
392.00 => s1.freq;
246.94 => s2.freq;
293.66 => s3.freq;
2:: second => now;

// C major (I)
0.3 => s1.gain;
0.3 => s2.gain;
0.3 => s3.gain;
261.63 => s1.freq;
329.63 => s2.freq;
392.00 => s3.freq;
3:: second => now;

// raise the pitch of oscilator s3 to G4
for( 20 => int i; i < 392.00; i++ )
{
    i => s3.freq;
    0 => s1.gain;
    0 => s2.gain;
    0.5 => s3.gain;
    .01::second => now;
}
// play the note G4
0 => s1.gain;
0 => s2.gain;
0.5 => s3.gain;
392.00 => s3.freq;
1.5:: second => now;

// Play a V - II - I chord progression in C major
// G major chord
0.3 => s1.gain;
0.3 => s2.gain;
0.3 => s3.gain;
392.00 => s1.freq;
246.94 => s2.freq;
293.66 => s3.freq;
2:: second => now;

// D minor chord
0.3 => s1.gain;
0.3 => s2.gain;
0.3 => s3.gain;
293.66 => s1.freq;
349.23 => s2.freq;
440.00 => s3.freq;
2:: second => now;

// C major chord
0.3 => s1.gain;
0.3 => s2.gain;
0.3 => s3.gain;
261.63 => s1.freq;
329.63 => s2.freq;
392.00 => s3.freq;
3:: second => now;

// raise the pitch of oscilator s1 to C4
for( 20 => int i; i < 261.63; i++ )
{
    i => s1.freq;
    0 => s2.gain;
    0 => s3.gain;
    .01::second => now;
}
// play the note C4
0.7 => s1.gain;
0 => s2.gain;
0 => s3.gain;
261.63 => s1.freq;
1.5:: second => now;