VoicForm f => dac;

//g.compress();
//g.attackTime(50::ms);

440 => f.freq;

[ "eee", "ihh", "ehh", "ahh"] @=> string phons[];

while( true ) 
{
    .5::second => now;
    phons[Std.rand2(0,phons.cap()-1)] => f.phoneme;
}