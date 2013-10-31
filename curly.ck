Impulse i => BiQuad f => dac;

.99 => f.prad;

1 => f.eqzs;

0.0 => float v;

while (true) {
    1.0 => i.next;
    Std.fabs(Math.sin(v)) * 4000.0 => f.pfreq;
    v + .1 => v;
    99::ms => now;
}