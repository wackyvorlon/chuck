VoicForm f => Gain g => dac;
TriOsc q => g;

3=>g.op;


"eee" => f.phoneme;

[50, 52, 53, 55, 57, 59, 60, 62] @=> int notes[];

while( true ) 
{
    .5::second => now;
    Std.mtof(notes[Std.rand2(0,notes.cap()-1)]) => float freq;
    freq => f.freq;
    freq/10 => q.freq;
}