red pitaya notes

signal output is:   out1  sma plug

red pitaya IP address:   192.168.1.100
pc needs to have static ip of 192.168.1.50
(google:  how to set static ip windows 7)

once pc set to static ip

you can plug ethernet cable from pc to red pitaya.
power on red pitaya
power plug is extreme right mini-usb plug,   on the side of ethernet jack
(see video )

let unit boot up, should take about 1minute or less.
once you see orange led on ethernet jack starting to blink, should be good.
green led will go out then back on solid.   orange blinking.
unit ready by then.
or can ping 192.168.1.100 to ensure system ready.
or just wait 40 seconds, should be ready by then.

open up web browser,  type in:     http://192.168.1.100

you should see a pitaya web page

click number 2  SDR transceiver

then will see  sdr transceiver is ready
you can close browser now

open gnuradio, or if already opened,  now you can run gnuradio scripts.

run the test scripts, i made two test scripts,  one for am mode, and another for ssb mode.



AM modulation:
with 1khz sine wave at 100% modulation,  signal output is -6dBm  max
-6dbm is the carrier power.   this power level was measured with a spectrum analyzer


ssb modulation
max power is 0dbm,  simple sine wave.



so max am is -6dbm

and max ssb is 0dbm





 
















