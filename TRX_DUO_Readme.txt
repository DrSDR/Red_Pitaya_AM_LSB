trx duo am:
audio in needs to be at line level  -1 to 1  to ensure 100% am modulation.
looking on spec ana,  the peak signal out of trx duo is -2.75 dBm
this is AM peak power,   carrier power will be 6dB lower.
what your amp gonna see is -2.75dbm peak 
if you need lower power, best to use external pads,  scaling the digital data before the dac is not good,  it reduces the spur free 
dynamic range of the dac.
so if you want -12.75dbm,  then put a 10db pad on output of TX1, this way dynamic range of the DAC is preserved.  moonshine radio tip.




trx duo usb
max power out:  -2.8dbm
audio source needs to be line level  -1 to 1
the signal source is a fine freq adjust,  if audio sounds like donald duck,
adjust freq in the signal source until it sounds ok
makes USB signal at 770khz

to change tx freq, change freq in the osmocom sink
100khz to 62MHZ

now hook this up to power amp, and get that transmit power to 50KWatts  LOL

using pavel demin's firmware image, the default IP of the red pitaya or trx-duo is 192.168.1.100
so set your pc ip to 192.168.1.50
i used a usb3.0 to ethernet adapter,  plugged ethernet cable direct to red pitaya, no need for ethernet switch.
trx duo works the same way.







