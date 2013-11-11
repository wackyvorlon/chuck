
Gain master => dac;
SndBuf clap => master;
SndBuf kick => master;
SndBuf hihat => master;

0.2 => hihat.gain;

me.dir() + "/audio/click_03.wav" => clap.read;
me.dir() + "/audio/kick_01.wav" => kick.read;
me.dir() + "/audio/hihat_03.wav" => hihat.read;

0.6 => master.gain;

clap.samples() => clap.pos;
kick.samples() => kick.pos;
hihat.samples() => hihat.pos;

for (0=>int i;true;i++)
{
    i%8 => int beat;
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
    (Math.randomf()*10::ms)+250::ms => now;
}
