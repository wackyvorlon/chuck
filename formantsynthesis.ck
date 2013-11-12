VoicForm f => dac;

//g.compress();
//g.attackTime(50::ms);

440 => f.freq;

while( true ) 
{
    .5::second => now;
    Std.rand2(0,31) => int phoneme;
    <<< phoneme >>>;
    phoneme => f.phonemeNum;
}