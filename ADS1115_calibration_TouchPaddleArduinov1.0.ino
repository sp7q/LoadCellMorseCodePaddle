//ADS1115 - with calibration
#include <tinysnore.h>
#include<ADS1115_WE.h> //liba was edited to give raw data instead of mV
#include<Wire.h>
#include <EEPROM.h>
#define I2C_ADDRESS_1 0x48
#define I2C_ADDRESS_2 0x49
ADS1115_WE adc(I2C_ADDRESS_1);
ADS1115_WE adc2(I2C_ADDRESS_2);

int result = 0;
int result2 = 0;
int led = 1; //1 - Trinket, 13 - Arduino
int sensitivity;
int sensitivityNow;
int leftNow;    
int rightNow;
int leftOn;      //left paddle treshold
int leftOnAbs;   //left paddle absolute value treshold 
int leftOff;     //left paddle off treshold
int rightOn;     //right paddle treshold 
int rightOnAbs;   //right paddle absolute value treshold 
int rightOff;   //right paddle off treshold
int hysteresis = 7; //hysteresis
int configMode = 0;
int time1;  //time for setup mode purpose
int time2;  //time for setup mode purpose

void setup() {
  pinMode(led, OUTPUT); 
  Wire.begin();

  //this warning dont work on ATTINY dont know why ....
  while(!adc2.init()){
        blink(20);
        delay(500);
  }

  while(!adc.init()){
        blink(40);
        delay(500);
  }

  EEPROM.get(0,sensitivity);
  EEPROM.get(2,leftOn);  
  EEPROM.get(4,leftOff);  
  EEPROM.get(6,rightOn); 
  EEPROM.get(8,rightOff); 
  

  
  adc.setVoltageRange_mV(ADS1115_RANGE_0256); //amplifier gain
  adc.setCompareChannels(ADS1115_COMP_0_1); //differential measurement
  adc.setConvRate(ADS1115_860_SPS); //samples pre second 
  adc.setMeasureMode(ADS1115_CONTINUOUS); //Continous mode
  adc.setAlertPinMode(ADS1115_ASSERT_AFTER_1); //after how many measurments ALRT output is set
  adc.setAlertModeAndLimit_V(ADS1115_MAX_LIMIT, leftOn, leftOff); //Comparator values Hightreshold then LowTreshold 
  adc.setAlertPol(ADS1115_ACT_HIGH); //ALRT polarity

  adc2.setVoltageRange_mV(ADS1115_RANGE_0256); //amplifier gain
  adc2.setCompareChannels(ADS1115_COMP_0_1); //differential measurement
  adc2.setConvRate(ADS1115_860_SPS); //samples pre second 
  adc2.setMeasureMode(ADS1115_CONTINUOUS); //Continous mode
  adc2.setAlertPinMode(ADS1115_ASSERT_AFTER_1); //after how many measurments ALRT output is set
  adc2.setAlertModeAndLimit_V(ADS1115_MAX_LIMIT, rightOn, rightOff); //Comparator values Hightreshold then LowTreshold 
  adc2.setAlertPol(ADS1115_ACT_HIGH); //ALRT polarity
  
  result = adc.getResult_mV(); 
  result2 = adc2.getResult_mV();
  if ((result > 20) && (result2 > 20)){
    configMode = 1;
    time1 = millis();
    }

}

void loop() {
  if (configMode){
  config_loop();
  }
  else {
  main_loop();
  }
}

void main_loop() {
  //snore lib for ATTINY85 - uC to sleep mode
  snore(10000);
  while (readVcc() < 3000){
    adc.setAlertModeAndLimit_V(ADS1115_MAX_LIMIT, 2000, 1900);
    adc2.setAlertModeAndLimit_V(ADS1115_MAX_LIMIT, 2000, 1900);
    digitalWrite(led, HIGH);
    delay(100);
    digitalWrite(led, LOW);
    delay(100);    
  }
  if (readVcc() < 3100){
    digitalWrite(led, HIGH);
  }
  else{
    digitalWrite(led, LOW);
  } 
}

  

void config_loop(){
  
  
  result = adc.getResult_mV(); 
  result2 = adc2.getResult_mV();
  time2 = millis(); 

//autocalibration
leftOn = result + sensitivity;  //measure free state and do the calibration 
      if (leftOn >= 0){
        leftOff = leftOn - hysteresis;
        }
        else {
          leftOnAbs = abs(leftOn);
          leftOff = -hysteresis - leftOnAbs;
          }
        rightOn = result2 + sensitivity;
       if (rightOn >= 0){
        rightOff = rightOn - hysteresis;
        }
        else {
          rightOnAbs = abs(rightOn);
          rightOff = -hysteresis - rightOnAbs;
          }  

//exit after 10s and write sensitivity
  if ((time2-time1)>10000){
      blink(sensitivity);
 
      EEPROM.put(0,sensitivity);   //store sensitivity permanent when leaving
      EEPROM.put(2,leftOn);  
      EEPROM.put(4,leftOff);  
      EEPROM.put(6,rightOn); 
      EEPROM.put(8,rightOff); 
      
      adc.setAlertModeAndLimit_V(ADS1115_MAX_LIMIT, leftOn, leftOff);
      adc2.setAlertModeAndLimit_V(ADS1115_MAX_LIMIT, rightOn, rightOff);
      configMode = 0;
    }

//set paddle status
  if ((result > 20) && (leftNow == 0)) {
   leftNow = 1;
   sensitivity = sensitivity + 10;
   }
  if (result < 10) {
   leftNow = 0;
  }
  if ((result2 > 20) && (rightNow == 0)) {
   rightNow = 1;
   sensitivity = sensitivity - 10;
   }
   if (result2 < 10) {
   rightNow = 0;
  }
//set sensitivity
if (sensitivity != sensitivityNow)
  switch (sensitivity){
      case 0:
      sensitivity = 10;
      time1 = millis();
      break;
    case 10:
      sensitivityNow = sensitivity;
      blink(sensitivityNow);
      time1 = millis();
      break;
    case 20:
      sensitivityNow = sensitivity;
      blink(sensitivityNow);
      time1 = millis();
      break;
    case 30:
      sensitivityNow = sensitivity;
      blink(sensitivityNow);
      time1 = millis();
      break;
    case 40:
      sensitivityNow = sensitivity;
      blink(sensitivityNow);
      time1 = millis();
      break;
    case 50:
      sensitivityNow = sensitivity;
      blink(sensitivityNow);
      time1 = millis();
      break;
    case 60:
      sensitivityNow = sensitivity;
      blink(sensitivityNow);
      time1 = millis();
      break;
    case 70:
      sensitivity = 60;
      time1 = millis();
      break;
    default:
      sensitivity = 10;
      time1 = millis();
      break;
    }  
}



void blink(int amount){
      for(int x = 0; x < amount; x = x+10){
      digitalWrite(led, HIGH);
      delay(50);
      digitalWrite(led, LOW);
      delay(200);
      }
    
  }

long readVcc() {
  // Read 1.1V reference against AVcc
  // set the reference to Vcc and the measurement to the internal 1.1V reference
  //https://provideyourown.com/2012/secret-arduino-voltmeter-measure-battery-voltage/
  #if defined(__AVR_ATmega32U4__) || defined(__AVR_ATmega1280__) || defined(__AVR_ATmega2560__)
    ADMUX = _BV(REFS0) | _BV(MUX4) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
  #elif defined (__AVR_ATtiny24__) || defined(__AVR_ATtiny44__) || defined(__AVR_ATtiny84__)
    ADMUX = _BV(MUX5) | _BV(MUX0);
  #elif defined (__AVR_ATtiny25__) || defined(__AVR_ATtiny45__) || defined(__AVR_ATtiny85__)
    ADMUX = _BV(MUX3) | _BV(MUX2);
  #else
    ADMUX = _BV(REFS0) | _BV(MUX3) | _BV(MUX2) | _BV(MUX1);
  #endif  

  delay(2); // Wait for Vref to settle
  ADCSRA |= _BV(ADSC); // Start conversion
  while (bit_is_set(ADCSRA,ADSC)); // measuring

  uint8_t low  = ADCL; // must read ADCL first - it then locks ADCH  
  uint8_t high = ADCH; // unlocks both

  long result = (high<<8) | low;

  result = 1125300L / result; // Calculate Vcc (in mV); 1125300 = 1.1*1023*1000
  return result; // Vcc in millivolts
}  
