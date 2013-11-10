
Gain master => dac;
SndBuf clap => master;
SndBuf kick => master;

me.dir() + "/audio/clap_01.wav" => clap.read;
me.dir() + "/audio/kick_01.wav" => kick.read;

0.6 => master.gain;

clap.samples() => clap.pos;
kick.samples() => kick.pos;

for (0=>int i;true;i++)
{
    i%8 => int beat;
    if(beat==0) {
        0=>clap.pos;
        250::ms=>now;
        0=>clap.pos;
    } else if (beat==1) {
        0=>kick.pos;
    }
    450::ms => now;
}
