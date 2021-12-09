%let pgm=utl-sas-directing-proc-printto-to-the-windows-clipboard-and-gsubmit;

SAS directing proc printto to the windows clipboard and gsubmit

github
https://tinyurl.com/2p8dsakr
                 _               _ _
  __ _ ___ _   _| |__  _ __ ___ (_) |_
 / _` / __| | | | `_ \| `_ ` _ \| | __|
| (_| \__ \ |_| | |_) | | | | | | | |_
 \__, |___/\__,_|_.__/|_| |_| |_|_|\__|
 |___/

Carl Denney
carldenney@comcast.net

and

richard devenezia
rdevenezia@gmail.com

You can execute a SAS macro which can have all sas language statements
on a mouse action, function key, command line or taskbar icon

F5 gsubmit '%anymac;'
F5 gsubmit 'proc options;run;'
F5 note;notesubmit '%anmac;'
F5 note;notesubmit 'proc options;run;'

RMB  assign with mouse software to a sas function key or keyboad keys

An inexpensive mouse $29 is the G203 Prodigy Gamming Mouse

/*          _       _   _          _
 _ __  _ __(_)_ __ | |_| |_ ___   | |_ ___
| `_ \| `__| | `_ \| __| __/ _ \  | __/ _ \
| |_) | |  | | | | | |_| || (_) | | || (_) |
| .__/|_|  |_|_| |_|\__|\__\___/   \__\___/
|_|
      _ _       _                         _
  ___| (_)_ __ | |__   ___   __ _ _ __ __| |
 / __| | | `_ \| `_ \ / _ \ / _` | `__/ _` |
| (__| | | |_) | |_) | (_) | (_| | | | (_| |
 \___|_|_| .__/|_.__/ \___/ \__,_|_|  \__,_|
         |_|     _     _
 _ __  _ __ ___ | |__ | | ___ _ __ ___
| `_ \| `__/ _ \| `_ \| |/ _ \ `_ ` _ \
| |_) | | | (_) | |_) | |  __/ | | | | |
| .__/|_|  \___/|_.__/|_|\___|_| |_| |_|
|_|
*/

THIS DOES NOT WORK

Note the I/O eror below

filename __dm clipbrd;

proc printto print=__dm;
run;quit;

proc print data=sashelp.class width=min;
run;quit;

proc printto;
run;quit;

18    filename __dm clipbrd;
19    proc printto print=__dm;
20    run;


ERROR: I/O failure.

NOTE: The SAS System stopped processing this step because of errors.
NOTE: PROCEDURE PRINTTO used (Total process time):
      real time           0.01 seconds

/*         _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| `_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

*/

richard devenezia
rdevenezia@gmail.com

In Linux, you would pipe to 'xclip'

filename wclip pipe 'clip';

options nonumber nodate nonumber nocenter;
title;

proc printto print=wclip;
proc print data=sashelp.class(obs=1);
run;
proc printto print=print;

run;

* Ctrl C to paste into Editor'

* Or to read from clipboard;

filename sasclip clipbrd;
data _null_;
  infile sasclip;
  input;
  put _infile_;
run;

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/


















