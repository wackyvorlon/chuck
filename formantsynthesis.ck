VoicForm f => dac;

//g.compress();
//g.attackTime(50::ms);

440 => f.freq;

[ "eee", "ihh", "ehh", "ahh", "aaa", "aww", "ohh"] @=> string phons[];
"ooo" => f.phoneme;

[50, 52, 53, 55, 57, 59, 60, 62] @=> int notes[];

while( true ) 
{
    .5::second => now;
    //phons[Std.rand2(0,phons.cap()-1)] => f.phoneme;
    //"ooo" => f.phoneme;
    //1=> f.speak;
}