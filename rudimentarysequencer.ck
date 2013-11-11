
Gain master => dac;
SndBuf clap => master;
SndBuf kick => master;
SndBuf hihat => master;
Mandolin manny => master;

0.2 => hihat.gain;

0.3 => manny.gain;

me.dir() + "/audio/click_03.wav" => clap.read;
me.dir() + "/audio/kick_01.wav" => kick.read;
me.dir() + "/audio/hihat_03.wav" => hihat.read;

0.6 => master.gain;

clap.samples() => clap.pos;
kick.samples() => kick.pos;
hihat.samples() => hihat.pos;

// Could use music.
[0, 2, 3, 4, 5, 7, 9, 10, 11] @=> int notes[];

now + 30::second => time endsong;

for (0=>int i;now<=endsong;i++)
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
