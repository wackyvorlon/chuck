SndBuf clap => dac;
SndBuf kick => dac;

me.dir() + "/audio/clap_01.wav" => clap.read;
me.dir() + "/audio/kick_01.wav" => kick.read;

for (0=>int i;;i++)
{
    if((i%2)==0) {
        0=>clap.pos;
    } else {
        0=>kick.pos;
    }
}
