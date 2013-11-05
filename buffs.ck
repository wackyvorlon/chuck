//Playing with recordings.

SinOsc e => SndBuf f => dac;

200 => e.freq;

//0.1 => g.mix;


//0.5=> r.freq;

me.dir() + "/audio/click_01.wav" => string foo;

foo => f.read;

0 => f.pos;

//0.1 => f.rate;

while(true)
{
    (Math.randomf()*100::ms)+400::ms =>now;
    0 => f.pos;
    Math.randomf() => f.rate;
    
}