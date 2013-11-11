
Gain master => dac;
SndBuf clap => master;
SndBuf kick => master;
SndBuf hihat => master;
SndBuf cowbell => master;
Mandolin manny => NRev r => master;
SqrOsc foo => r;

// Tweak volumes
0.2 => hihat.gain;

0.3 => manny.gain;

0.6 => master.gain;

0.1 => foo.gain;

// Tweak effects
0.1 => r.mix;

//Load samples
me.dir() + "/audio/click_03.wav" => clap.read;
me.dir() + "/audio/kick_01.wav" => kick.read;
me.dir() + "/audio/hihat_03.wav" => hihat.read;
me.dir() + "/audio/cowbell_01.wav" => cowbell.read;

//Set pos to end, to prevent spurious playing
clap.samples() => clap.pos;
kick.samples() => kick.pos;
hihat.samples() => hihat.pos;
cowbell.samples() => cowbell.pos;

// Play part of the blues scale.
[0, 2, 3,4, 7] @=> int notes[];

// Implements our 30 second timer.
now + 30::second => time endsong;

//Helpful for debugging, setting to 1 makes it play forever
0=>int playforever;

for (0=>int i;(now<=endsong)||playforever;i++)
{
    i%8 => int beat; // Which beat are we on?
    
    // Set frequencies for musical parts.
    Std.mtof(45+Std.rand2(0,1)*12+(notes[Std.rand2(0,notes.cap()-1)])) => manny.freq;
    Std.mtof(45+Std.rand2(1,2)*12+(notes[Std.rand2(0,notes.cap()-1)])) => foo.freq;
    
    // Make mandolin noise
    1=>manny.pluck;
    
    // Main sequencing
    if((beat==0)||(beat==3)) {
        Math.random2f(0.1,1) => float rate;
        <<< rate >>>;
        rate => clap.rate;
        0=>clap.pos;
    } else if ((beat==1)||(beat==4)) {
        0=>kick.pos;
    } else if (!(beat%2)) { // This ensures cowbell plays on beats evenly divisble by 2
        //play cowbell
        Math.random2f(0.8,1.2) => cowbell.rate;
        0 => cowbell.pos;
    }
    0=>hihat.pos;
    (Math.randomf()*10::ms)+240::ms => now;

}
