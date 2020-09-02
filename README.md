# LoadCellMorseCodePaddle
Load cell morse code paddle

This is a concept of using load cell as Morse Code paddle
Advantages :
- easy mechanical apply
- no moving parts
- fast and qiet
- cheap - Trinket + laod cells + AD ~25$
- auto calibration - no readjustment needed


In TrinketShielPaddle folde You can find KiCAD files + production files ready to send to *PCB make comapny 


Some challenges during during construction :

Assumpion - max speed 100 WPM

Sume usefull link about timing:
https://morsecode.world/international/timing.html

100WPM - 1dot = 12ms

AD requerements : 
Refering to Nyquist–Shannon law https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem sampling rate should be at least 167 SPS


Load cell gives differential voltage: ~0-1.5mV


ADS1115 - 16bit, 860SPS, lowest range 256mV, Comparator :
-860SPS - OK
-16bit - OK
-256mV - bit too low (do You know some AD with gain >16 adn built in comparator)
-Comparator - as a requierement !
