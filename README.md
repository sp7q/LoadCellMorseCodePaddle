# LoadCellMorseCodePaddle
Load cell morse code paddle

This is a concept of using load cell as Morse Code paddle
Advantages :
- easy mechanical apply
- no moving parts
- fast and quiet
- cheap - Trinket + laod cells + AD ~25$
- auto calibration - no readjustment needed


In TrinketShielPaddle folde You can find KiCAD files + production files ready to send to *PCB make comapny 


Some challenges during during construction :

Assumpion - max speed 100 WPM

Sume usefull link about timing:
https://morsecode.world/international/timing.html

100WPM - 1dot = 12ms

AD requirements : 
Refering to Nyquist–Shannon law https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem sampling rate should be at least 167 SPS


Load cell gives differential voltage: ~0-1.5mV


ADS1115 - 16bit(12bit ADS1015), 860SPS, lowest range 256mV, Comparator, differential mesurement
- 860SPS - OK
- 16bit - OK - 0.0039mV/bit (ADS1015 - 0.0625mV/bit - too small resolution vs 0-1.5mV range)
- 256mV - bit too low (do You know some AD with gain >16 and built in comparator - then smaller resolution is requiered)
- Comparator - as a requierement ! - comparator output drives executive transistor directly
- Differential mesurement - requre for 4 wire load cell


TODO : 
- AD1115_wa lib cleaning
- other A/D ?
- i2c connection autodiagnose work on Arduino Nano but not on Trinket
- Fully printed housing + paddles will be nice addon (OpenSCAD)
- E/V/HST test
- issue with charging circuit
- battery alert below 3.3V
