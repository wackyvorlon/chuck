VoicForm f => Gain g => dac;
TriOsc q => g;

3=>g.op;
//2 => q.gain;

//"eee" => f.phoneme;
"ahh" => f.phoneme;

[50, 52, 53, 55, 57, 59, 60, 62] @=> int notes[];

//1 => q.startBlowing;

while( true ) 
{
    .5::second => now;
    Std.mtof(notes[Std.rand2(0,notes.cap()-1)]) => float freq;
    freq => f.freq;
    freq/2 => q.freq;
    
}