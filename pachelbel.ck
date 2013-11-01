// Canon in D
// Code by Paul Meesters

// patch
SinOsc s1 => NRev r => dac;
TriOsc s2 => r;
SqrOsc s3 => r;
SawOsc s4 => r;
// initial settings
.1 => s1.gain;
.1 => s2.gain;
.1 => s3.gain;
.1 => s4.gain;
.1 => r.mix;
44 => int tempo;

[[78,384], [76,384], [74,384], [73,384], [71,384], [69,384], [71,384], [73,384], [74,384],[73,384], [71,384], [69,384], [67,384], [66,384], [67,384], [64,384], [62,192], [66,192], [69,192],[67,192], [66,192], [62,192], [66,192], [64,192], [62,192], [67,192], [66,192], [69,192], [67,192],[71,192], [69,192], [67,192], [66,192], [62,192], [64,192], [73,192], [74,192], [78,192], [81,192],[69,192], [71,192], [67,192], [69,192], [66,192], [62,192], [74,192], [76,72], [74,24], [76,24],[74,24], [76,24], [74,24], [76,24], [74,24], [76,24], [74,24], [73,96], [74,96], [73,96],[74,96], [74,96], [73,96], [81,96], [76,96], [78,96], [74,96], [86,96], [85,96], [83,96],[85,96], [78,96], [81,96], [83,96], [79,96], [78,96], [76,96], [79,96], [78,96], [76,96],[74,96], [73,96], [71,96], [69,96], [67,96], [66,96], [64,96], [67,96], [66,96], [64,96],[62,192], [66,96], [67,96], [69,96], [64,96], [69,96], [67,96], [66,96], [71,96], [69,96],[67,96], [69,96], [67,96], [66,96], [64,96], [62,192], [71,96], [73,96], [74,96], [73,96],[71,96], [69,96], [67,96], [66,96], [64,96], [71,96], [69,96], [71,96], [69,96], [67,96],[66,192], [78,192], [76,384], [74,192], [78,384], [83,384], [81,384], [83,384], [85,384], [86,192],[74,96], [73,384], [71,96], [74,384], [74,576], [74,192], [74,192], [79,192], [76,192], [81,192],[81,96], [78,48], [79,48], [81,96], [78,48], [79,48], [81,48], [69,48], [71,48], [73,48],[74,48], [76,48], [78,48], [79,48], [78,96], [74,48], [76,48], [78,96], [78,48], [79,48],[81,48], [83,48], [81,48], [79,48], [81,48], [78,48], [79,48], [81,48], [79,96], [83,48],[81,48], [79,96], [78,48], [76,48], [78,48], [76,48], [74,48], [76,48], [78,48], [79,48],[81,48], [83,48], [79,96], [83,48], [81,48], [83,96], [85,48], [86,48], [81,48], [83,48],[85,48], [86,48], [88,48], [90,48], [91,48], [93,48], [90,96], [86,48], [88,48], [90,96],[88,48], [86,48], [88,48], [85,48], [86,48], [88,48], [90,48], [88,48], [86,48], [85,48],[86,96], [83,48], [85,48], [86,96], [74,48], [76,48], [78,48], [79,48], [78,48], [76,48],[78,48], [86,48], [85,48], [86,48], [83,96], [86,48], [85,48], [83,96], [81,48], [79,48],[81,48], [79,48], [78,48], [79,48], [81,48], [83,48], [85,48], [86,48], [83,96], [86,48],[85,48], [86,96], [85,48], [83,48], [85,48], [86,48], [88,48], [86,48], [85,48], [86,48],[83,48], [85,48], [86,192], [85,192], [83,192], [86,192], [74,192], [74,192], [74,192], [76,192],[81,192], [81,192], [78,192], [81,192], [79,192], [78,192], [79,192], [88,192], [90,96], [78,96],[79,96], [78,96], [76,96], [88,96], [90,96], [88,96], [86,96], [78,96], [74,96], [83,96],[81,96], [69,96], [67,96], [69,96], [71,96], [83,96], [85,96], [83,96], [81,96], [69,96],[67,96], [69,96], [71,96], [83,96], [81,96], [83,96], [85,96], [73,96], [71,96], [73,96],[74,96], [86,96], [88,96], [86,96], [85,96], [73,96], [74,96], [73,96], [71,96], [83,96],[81,96], [83,96], [85,96], [73,96], [78,96], [76,96], [74,96], [86,96], [88,96], [91,96],[90,96], [78,96], [81,96], [90,96], [86,96], [91,96], [90,96], [91,96], [88,96], [81,96],[79,96], [81,96], [78,96], [81,96], [81,96], [81,96], [81,96], [81,96], [81,96], [81,96],[78,96], [78,96], [78,96], [78,96], [78,96], [78,96], [81,96], [81,96], [79,96], [79,96],[79,96], [86,96], [86,96], [86,96], [86,96], [86,96], [86,96], [86,96], [83,96], [83,96],[81,96], [81,96], [88,96], [85,96], [81,96], [78,96], [78,96], [78,96], [76,96], [76,96],[76,96], [76,96], [74,96], [74,96], [74,96], [74,96], [81,96], [81,96], [81,96], [81,96],[83,96], [83,96], [83,96], [83,96], [81,96], [81,96], [81,96], [81,96], [83,96], [83,96],[83,96], [83,96], [85,96], [85,96], [85,96], [85,96], [86,96], [74,48], [76,48], [78,48],[74,96], [73,96], [85,48], [86,48], [88,48], [85,48], [83,96], [71,48], [73,48], [74,48],[71,48], [73,96], [81,48], [79,48], [78,48], [76,48], [74,96], [79,48], [78,48], [76,48],[79,48], [78,96], [74,48], [76,48], [78,48], [81,48], [79,96], [83,48], [81,48], [79,48],[78,48], [76,96], [81,48], [79,48], [78,48], [76,48], [78,96], [74,48], [73,48], [74,48],[66,48], [69,96], [69,48], [71,48], [73,48], [69,48], [66,96], [74,48], [76,48], [78,48],[74,48], [78,96], [78,48], [76,48], [74,48], [73,48], [71,96], [71,48], [69,48], [71,48],[73,48], [74,96], [78,48], [76,48], [74,48], [78,48], [79,96], [74,48], [73,48], [71,48],[71,48], [69,96], [64,96], [69,96], [69,96], [69,576], [81,192], [74,576], [81,192], [79,384],[81,384], [79,192], [74,192], [76,72], [74,24], [76,24], [74,24], [76,24], [74,24], [76,24],[74,24], [76,24], [74,24], [73,96], [74,192], [86,192], [85,384], [83,384], [81,384], [74,288],[76,96], [78,384], [83,384], [76,288], [76,96], [78,288], [78,96], [78,96], [79,96], [78,96],[76,96], [74,288], [74,96], [74,96], [76,96], [74,96], [73,96], [71,384], [74,384], [74,96],[72,96], [71,96], [72,96], [69,288], [69,96], [69,288], [81,96], [81,96], [83,96], [81,96],[79,96], [78,288], [78,96], [78,96], [79,96], [78,96], [76,96], [74,96], [72,96], [71,96],[72,96], [69,288], [69,96], [67,192], [74,192], [73,288], [73,96], [74,192], [86,384], [85,384],[83,384], [81,384], [79,384], [78,480], [76,96], [76,384], [78,192], [78,384], [76,192], [74,192],[86,384], [84,192], [83,384], [86,192], [81,192], [83,384], [81,384], [81,384], [81,288], [79,96],[78,384], [90,288], [88,96], [86,576], [86,192], [86,384], [85,384], [86,192], [74,192], [73,192],[85,192], [83,192], [71,192], [69,192], [81,192], [79,192], [91,192], [90,192], [78,192], [76,192],[83,192], [76,192], [88,192], [90,192], [78,192], [76,192], [88,192], [86,192], [74,192], [73,192],[85,192], [83,192], [71,192], [69,192], [81,192], [79,288], [88,96], [81,192], [81,192], [78,384] ] @=> int voice1[][];[[78,384], [76,384], [74,384], [73,384], [71,384], [69,384], [71,384], [73,384], [74,384],[73,384], [71,384], [69,384], [67,384], [66,384], [67,384], [64,384], [62,192], [66,192], [69,192],[67,192], [66,192], [62,192], [66,192], [64,192], [62,192], [59,192], [62,192], [69,192], [67,192],[71,192], [69,192], [67,192], [66,192], [62,192], [64,192], [73,192], [74,192], [78,192], [81,192],[69,192], [71,192], [67,192], [69,192], [66,192], [62,192], [74,192], [76,72], [74,24], [76,24],[74,24], [76,24], [74,24], [76,24], [74,24], [76,24], [74,24], [73,96], [74,96], [73,96],[74,96], [62,96], [61,96], [69,96], [64,96], [66,96], [62,96], [74,96], [73,96], [71,96],[73,96], [78,96], [81,96], [83,96], [79,96], [78,96], [76,96], [79,96], [78,96], [76,96],[74,96], [73,96], [71,96], [69,96], [67,96], [66,96], [64,96], [67,96], [66,96], [64,96],[62,96], [64,96], [66,96], [67,96], [69,96], [64,96], [69,96], [67,96], [66,96], [71,96],[69,96], [67,96], [69,96], [67,96], [66,96], [64,96], [62,96], [59,96], [71,96], [73,96],[74,96], [73,96], [71,96], [69,96], [67,96], [66,96], [64,96], [71,96], [69,96], [71,96],[69,96], [67,96], [66,192], [78,192], [76,384], [74,192], [78,384], [83,384], [81,384], [83,384],[85,384], [86,192], [74,192], [73,384], [71,192], [74,384], [74,576], [74,192], [74,192], [79,192],[76,192], [81,192], [81,96], [78,48], [79,48], [81,96], [78,48], [79,48], [81,48], [69,48],[71,48], [73,48], [74,48], [76,48], [78,48], [79,48], [78,96], [74,48], [76,48], [78,96],[66,48], [67,48], [69,48], [71,48], [69,48], [67,48], [69,48], [66,48], [67,48], [69,48],[67,96], [71,48], [69,48], [67,96], [66,48], [64,48], [66,48], [64,48], [62,48], [64,48],[66,48], [67,48], [69,48], [71,48], [67,96], [71,48], [69,48], [71,96], [73,48], [74,48],[69,48], [71,48], [73,48], [74,48], [76,48], [78,48], [79,48], [81,48], [78,96], [74,48],[76,48], [78,96], [76,48], [74,48], [76,48], [73,48], [74,48], [76,48], [78,48], [76,48],[74,48], [73,48], [74,96], [71,48], [73,48], [74,96], [62,48], [64,48], [66,48], [67,48],[66,48], [64,48], [66,48], [74,48], [73,48], [74,48], [71,96], [74,48], [73,48], [71,96],[69,48], [67,48], [69,48], [67,48], [66,48], [67,48], [69,48], [71,48], [73,48], [74,48],[71,96], [74,48], [73,48], [74,96], [73,48], [71,48], [73,48], [74,48], [76,48], [74,48],[73,48], [74,48], [71,48], [73,48], [74,192], [73,192], [71,192], [74,192], [62,192], [62,192],[62,192], [64,192], [69,192], [69,192], [66,192], [69,192], [67,192], [66,192], [67,192], [76,192],[78,96], [66,96], [67,96], [66,96], [64,96], [76,96], [78,96], [76,96], [74,96], [66,96],[62,96], [71,96], [69,96], [57,96], [55,96], [57,96], [59,96], [71,96], [73,96], [71,96],[69,96], [57,96], [55,96], [57,96], [59,96], [71,96], [69,96], [71,96], [73,96], [61,96],[59,96], [61,96], [62,96], [74,96], [76,96], [74,96], [73,96], [61,96], [62,96], [61,96],[59,96], [71,96], [69,96], [71,96], [73,96], [61,96], [66,96], [64,96], [62,96], [74,96],[76,96], [79,96], [78,96], [66,96], [69,96], [78,96], [74,96], [79,96], [78,96], [79,96],[76,96], [69,96], [67,96], [69,96], [66,96], [69,96], [69,96], [69,96], [69,96], [69,96],[69,96], [69,96], [66,96], [66,96], [66,96], [66,96], [66,96], [66,96], [69,96], [69,96],[67,96], [67,96], [67,96], [74,96], [74,96], [74,96], [74,96], [74,96], [74,96], [74,96],[71,96], [71,96], [69,96], [69,96], [76,96], [73,96], [69,96], [78,96], [78,96], [78,96],[76,96], [76,96], [76,96], [76,96], [74,96], [74,96], [74,96], [74,96], [81,96], [81,96],[81,96], [81,96], [83,96], [83,96], [83,96], [83,96], [81,96], [81,96], [81,96], [81,96],[83,96], [83,96], [83,96], [83,96], [85,96], [73,96], [73,96], [73,96], [74,96], [62,48],[64,48], [66,96], [62,96], [61,96], [73,48], [74,48], [76,96], [73,96], [71,96], [59,48],[61,48], [62,96], [59,96], [61,96], [69,48], [67,48], [66,96], [64,96], [62,96], [67,48],[66,48], [64,96], [67,96], [66,96], [62,48], [64,48], [66,96], [69,96], [67,96], [71,48],[69,48], [67,96], [66,96], [64,96], [69,48], [67,48], [66,96], [64,96], [66,96], [74,48],[73,48], [74,96], [66,96], [69,96], [69,48], [71,48], [73,96], [69,96], [66,96], [74,48],[76,48], [78,96], [74,96], [78,96], [78,48], [76,48], [74,96], [73,96], [71,96], [71,48],[69,48], [71,96], [73,96], [74,96], [78,48], [76,48], [74,96], [78,96], [79,96], [74,48],[73,48], [71,96], [71,96], [69,96], [64,96], [69,96], [69,96], [69,576], [69,192], [62,576],[69,192], [67,384], [69,384], [67,192], [62,192], [64,72], [62,24], [64,24], [62,24], [64,24],[62,24], [64,24], [62,24], [64,24], [62,24], [61,96], [62,192], [74,192], [73,384], [71,384],[69,384], [62,288], [64,96], [66,384], [71,384], [64,288], [64,96], [66,288], [78,96], [78,96],[79,96], [78,96], [76,96], [74,288], [74,96], [74,96], [76,96], [74,96], [73,96], [71,384],[74,384], [74,96], [72,96], [71,96], [72,96], [69,288], [69,96], [69,288], [81,96], [81,96],[83,96], [81,96], [79,96], [78,288], [78,96], [78,96], [79,96], [78,96], [76,96], [74,96],[72,96], [71,96], [72,96], [69,288], [69,96], [67,192], [74,192], [73,288], [73,96], [74,192],[74,384], [73,384], [71,384], [69,384], [67,384], [66,480], [64,96], [64,384], [66,192], [78,384],[76,192], [74,192], [86,384], [84,192], [83,384], [86,192], [81,192], [83,384], [81,384], [81,384],[69,288], [67,96], [66,384], [78,288], [76,96], [74,576], [74,192], [74,384], [73,384], [74,192],[62,192], [61,192], [73,192], [71,192], [59,192], [57,192], [69,192], [67,192], [79,192], [78,192],[66,192], [64,192], [71,192], [64,192], [76,192], [78,384] ] @=> int voice2[][];[[78,384], [76,384], [74,384], [73,384], [71,384], [69,384], [71,384], [73,384], [74,384],[73,384], [71,384], [69,384], [67,384], [66,384], [67,384], [64,384], [62,192], [66,192], [69,192],[67,192], [66,192], [62,192], [66,192], [64,192], [62,192], [59,192], [62,192], [69,192], [67,192],[71,192], [69,192], [67,192], [66,192], [62,192], [64,192], [73,192], [74,192], [78,192], [81,192],[69,192], [71,192], [67,192], [69,192], [66,192], [62,192], [74,192], [76,72], [74,24], [76,24],[74,24], [76,24], [74,24], [76,24], [74,24], [76,24], [74,24], [73,96], [74,96], [73,96],[74,96], [62,96], [61,96], [69,96], [64,96], [66,96], [62,96], [74,96], [73,96], [71,96],[73,96], [78,96], [81,96], [83,96], [79,96], [78,96], [76,96], [79,96], [78,96], [76,96],[74,96], [73,96], [71,96], [69,96], [67,96], [66,96], [64,96], [67,96], [66,96], [64,96],[62,96], [64,96], [66,96], [67,96], [69,96], [64,96], [69,96], [67,96], [66,96], [71,96],[69,96], [67,96], [69,96], [67,96], [66,96], [64,96], [62,96], [59,96], [71,96], [73,96],[74,96], [73,96], [71,96], [69,96], [67,96], [66,96], [64,96], [71,96], [69,96], [71,96],[69,96], [67,96], [66,192], [78,192], [76,384], [74,192], [78,384], [83,384], [81,384], [83,384],[85,384], [86,192], [74,192], [73,384], [71,192], [74,384], [74,576], [74,192], [74,192], [79,192],[76,192], [81,192], [81,96], [78,48], [79,48], [81,96], [78,48], [79,48], [81,48], [69,48],[71,48], [73,48], [74,48], [76,48], [78,48], [79,48], [78,96], [74,48], [76,48], [78,96],[66,48], [67,48], [69,48], [71,48], [69,48], [67,48], [69,48], [66,48], [67,48], [69,48],[67,96], [71,48], [69,48], [67,96], [66,48], [64,48], [66,48], [64,48], [62,48], [64,48],[66,48], [67,48], [69,48], [71,48], [67,96], [71,48], [69,48], [71,96], [73,48], [74,48],[69,48], [71,48], [73,48], [74,48], [76,48], [78,48], [79,48], [81,48], [78,96], [74,48],[76,48], [78,96], [76,48], [74,48], [76,48], [73,48], [74,48], [76,48], [78,48], [76,48],[74,48], [73,48], [74,96], [71,48], [73,48], [74,96], [62,48], [64,48], [66,48], [67,48],[66,48], [64,48], [66,48], [74,48], [73,48], [74,48], [71,96], [74,48], [73,48], [71,96],[69,48], [67,48], [69,48], [67,48], [66,48], [67,48], [69,48], [71,48], [73,48], [74,48],[71,96], [74,48], [73,48], [74,96], [73,48], [71,48], [73,48], [74,48], [76,48], [74,48],[73,48], [74,48], [71,48], [73,48], [74,192], [73,192], [71,192], [74,192], [62,192], [62,192],[62,192], [64,192], [69,192], [69,192], [66,192], [69,192], [67,192], [66,192], [67,192], [76,192],[78,96], [66,96], [67,96], [66,96], [64,96], [76,96], [78,96], [76,96], [74,96], [66,96],[62,96], [71,96], [69,96], [57,96], [55,96], [57,96], [59,96], [71,96], [73,96], [71,96],[69,96], [57,96], [55,96], [57,96], [59,96], [71,96], [69,96], [71,96], [73,96], [61,96],[59,96], [61,96], [62,96], [74,96], [76,96], [74,96], [73,96], [61,96], [62,96], [61,96],[59,96], [71,96], [69,96], [71,96], [73,96], [61,96], [66,96], [64,96], [62,96], [74,96],[76,96], [79,96], [78,96], [66,96], [69,96], [78,96], [74,96], [79,96], [78,96], [79,96],[76,96], [69,96], [67,96], [69,96], [66,96], [69,96], [69,96], [69,96], [69,96], [69,96],[69,96], [69,96], [66,96], [66,96], [66,96], [66,96], [66,96], [66,96], [69,96], [69,96],[67,96], [67,96], [67,96], [74,96], [74,96], [74,96], [74,96], [74,96], [74,96], [74,96],[71,96], [71,96], [69,96], [69,96], [76,96], [73,96], [69,96], [78,96], [78,96], [78,96],[76,96], [76,96], [76,96], [76,96], [74,96], [74,96], [74,96], [74,96], [81,96], [81,96],[81,96], [81,96], [83,96], [83,96], [83,96], [83,96], [81,96], [81,96], [81,96], [81,96],[83,96], [83,96], [83,96], [83,96], [85,96], [73,96], [73,96], [73,96], [74,96], [62,48],[64,48], [66,96], [62,96], [61,96], [73,48], [74,48], [76,96], [73,96], [71,96], [59,48],[61,48], [62,96], [59,96], [61,96], [69,48], [67,48], [66,96], [64,96], [62,96], [67,48],[66,48], [64,96], [67,96], [66,96], [62,48], [64,48], [66,96], [69,96], [67,96], [71,48],[69,48], [67,96], [66,96], [64,96], [69,48], [67,48], [66,96], [64,96], [66,96], [74,48],[73,48], [74,96], [66,96], [69,96], [69,48], [71,48], [73,96], [69,96], [66,96], [74,48],[76,48], [78,96], [74,96], [78,96], [78,48], [76,48], [74,96], [73,96], [71,96], [71,48],[69,48], [71,96], [73,96], [74,96], [78,48], [76,48], [74,96], [78,96], [79,96], [74,48],[73,48], [71,96], [71,96], [69,96], [64,96], [69,96], [69,96], [69,576], [69,192], [62,576],[69,192], [67,384], [69,384], [67,192], [62,192], [64,72], [62,24], [64,24], [62,24], [64,24],[62,24], [64,24], [62,24], [64,24], [62,24], [61,96], [62,192], [74,192], [73,384], [71,384],[69,384], [62,288], [64,96], [66,384], [71,384], [64,288], [64,96], [66,288], [78,96], [78,96],[79,96], [78,96], [76,96], [74,288], [74,96], [74,96], [76,96], [74,96], [73,96], [71,384],[74,384], [74,96], [72,96], [71,96], [72,96], [69,288], [69,96], [69,288], [81,96], [81,96],[83,96], [81,96], [79,96], [78,288], [78,96], [78,96], [79,96], [78,96], [76,96], [74,96],[72,96], [71,96], [72,96], [69,288], [69,96], [67,192], [74,192], [73,288], [73,96], [74,192],[74,384], [73,384], [71,384], [69,384], [67,384], [66,480], [64,96], [64,384], [66,192], [78,384],[76,192], [74,192], [86,384], [84,192], [83,384], [86,192], [81,192], [83,384], [81,384], [81,384],[69,288], [67,96], [66,384], [78,288], [76,96], [74,576], [74,192], [74,384], [73,384], [74,384] ] @=> int voice3[][];[[50,384], [45,384], [47,384], [42,384], [43,384], [38,384], [43,384], [45,384], [50,384],[45,384], [47,384], [42,384], [43,384], [38,384], [43,384], [45,384], [50,384], [45,384], [47,384],[42,384], [43,384], [38,384], [43,384], [45,384], [50,384], [45,384], [47,384], [42,384], [43,384],[38,384], [43,384], [45,384], [50,384], [45,384], [47,384], [42,384], [43,384], [38,384], [43,384],[45,384], [50,384], [45,384], [47,384], [42,384], [43,384], [38,384], [43,384], [45,384], [50,384],[45,384], [47,384], [42,384], [43,384], [38,384], [43,384], [45,384], [50,384], [45,384], [47,384],[42,384], [43,384], [38,384], [43,384], [45,384], [50,384], [45,384], [47,384], [42,384], [43,384],[38,384], [43,384], [45,384], [50,384], [45,384], [47,384], [42,384], [43,384], [38,384], [43,384],[45,384], [50,384], [45,384], [47,384], [42,384], [43,384], [38,384], [43,384], [45,384], [50,384],[45,384], [47,384], [42,384], [43,384], [38,384], [43,384], [45,384], [50,384], [45,384], [47,384],[42,384], [43,384], [38,384], [43,384], [45,384], [50,384], [45,384], [47,384], [42,384], [43,384],[38,384], [43,384], [45,384], [50,384], [45,384], [47,384], [42,384], [43,384], [38,384], [43,384],[45,384], [50,384], [45,384], [47,384], [42,384], [43,384], [38,384], [43,384], [45,384], [50,384],[45,384], [47,384], [42,384], [43,384], [38,384], [43,384], [45,384], [50,384], [45,384], [47,384],[42,384], [43,384], [38,384], [43,384], [45,384], [50,384], [45,384], [47,384], [42,384], [43,384],[38,384], [43,384], [45,384], [50,384], [45,384], [47,384], [42,384], [43,384], [38,384], [43,384],[45,384], [50,384], [45,384], [47,384], [42,384], [43,384], [38,384], [43,384], [45,384], [50,384],[45,384], [47,384], [42,384], [43,384], [38,384], [43,384], [45,384], [50,384], [45,384], [47,384],[42,384], [43,384], [38,384], [43,384], [45,384], [50,384], [45,384], [47,384], [42,384], [43,384],[38,384], [43,384], [45,384], [50,384], [45,384], [47,384], [42,384], [43,384], [38,384], [43,384],[45,384], [50,384], [45,384], [47,384], [42,384], [43,384], [38,384], [43,384], [45,384], [50,384],[45,384], [47,384], [42,384], [43,384], [38,384], [43,384], [45,384], [50,384], [45,384], [47,384],[42,384], [43,384], [38,384], [43,384], [45,384], [50,384] ] @=> int voice4[][];
Event finish;
fun void playVoice(Osc s, int voice[][], int transpose)
{    for( 0 => int i; i < voice.cap(); i++) {
    if ( voice[i][0] > 0 ) {
        Std.mtof( voice[i][0] + transpose) => s.freq;
        (voice[i][1]*(tempo/10))::ms => now;
    }
}
finish.broadcast();
}
//Main: play the voice
spork ~ playVoice(s1, voice1, 0);
spork ~ playVoice(s2, voice2, -12);
spork ~ playVoice(s3, voice3, -12);
spork ~ playVoice(s4, voice4, 0);
finish => now;