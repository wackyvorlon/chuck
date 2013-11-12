VoicForm f => Gain g => dac;
TriOsc q => g;

3=>g.op;
//g.compress();
//g.attackTime(50::ms);
//2 => q.freq;

//440 => f.freq;

[ "eee", "ihh", "ehh", "ahh", "aaa", "aww", "ohh"] @=> string phons[];
"eee" => f.phoneme;

[50, 52, 53, 55, 57, 59, 60, 62] @=> int notes[];

while( true ) 
{
    .5::second => now;
    /*0 => f.quiet;
    50::ms => now;*/
    Std.mtof(notes[Std.rand2(0,notes.cap()-1)]) => float freq;
    freq => f.freq;
    freq/10 => q.freq;
    //phons[Std.rand2(0,phons.cap()-1)] => f.phoneme;
    //"ooo" => f.phoneme;
    1=> f.speak;
}