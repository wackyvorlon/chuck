
Gain master => dac;
SndBuf clap => master;
SndBuf kick => master;
SndBuf hihat => master;
Mandolin manny => master;

// Tweak volumes
0.2 => hihat.gain;

0.3 => manny.gain;

0.6 => master.gain;

//Load samples
me.dir() + "/audio/click_03.wav" => clap.read;
me.dir() + "/audio/kick_01.wav" => kick.read;
me.dir() + "/audio/hihat_03.wav" => hihat.read;

//Set pos to end, to prevent spurious playing
clap.samples() => clap.pos;
kick.samples() => kick.pos;
hihat.samples() => hihat.pos;

// Play the blues scale.
[0, 2, 3, 4, 5, 7, 9, 10, 11] @=> int notes[];

// Implements our 30 second timer.
now + 30::second => time endsong;

//Helpful for debugging, setting to 1 makes it play forever
1=>int playforever;

for (0=>int i;(now<=endsong)||playforever;i++)
{
    i%8 => int beat;
    Std.mtof(45+Std.rand2(0,2)*12+(notes[Std.rand2(0,notes.cap()-1)])) => manny.freq;
    //Math.randomf() => manny.stringDetune;
    1=>manny.pluck;
    if((beat==0)||(beat==3)) {
        Math.random2f(0.1,2) => float rate;
        <<< rate >>>;
        rate => clap.rate;
        0=>clap.pos;
        //250::ms=>now;
        //0=>clap.pos;
    } else if ((beat==1)||(beat==4)) {
        0=>kick.pos;
    }
    0=>hihat.pos;
    (Math.randomf()*10::ms)+240::ms => now;

}
