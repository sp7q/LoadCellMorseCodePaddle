//ADS1105 - without calibration
#include <tinysnore.h>
#include<ADS1115_WE.h> 
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
int configMode = 0;
int time1;  //time for setup mode purpose
int time2;  //time for setup mode purpose

void setup() {

  pinMode(led, OUTPUT); 
  Wire.begin();

  
  while(!adc2.init()){
        blink(32);
        delay(500);
  }

  while(!adc.init()){
        blink(64);
        delay(500);
  }

  EEPROM.get(0,sensitivity);

  adc.setVoltageRange_mV(ADS1115_RANGE_0256); //amplifier gain
  adc.setCompareChannels(ADS1115_COMP_0_1); //differential measurement
  adc.setConvRate(ADS1115_860_SPS); //samples pre second 
  adc.setMeasureMode(ADS1115_CONTINUOUS); //Continous mode
  adc.setAlertPinMode(ADS1115_ASSERT_AFTER_1); //after how many measurments ALRT output is set
  adc.setAlertModeAndLimit_V(ADS1115_MAX_LIMIT, sensitivity, (sensitivity-16)); //Comparator values Hightreshold then LowTreshold 
  adc.setAlertPol(ADS1115_ACT_HIGH); //ALRT polarity

  adc2.setVoltageRange_mV(ADS1115_RANGE_0256); //amplifier gain
  adc2.setCompareChannels(ADS1115_COMP_0_1); //differential measurement
  adc2.setConvRate(ADS1115_860_SPS); //samples pre second 
  adc2.setMeasureMode(ADS1115_CONTINUOUS); //Continous mode
  adc2.setAlertPinMode(ADS1115_ASSERT_AFTER_1); //after how many measurments ALRT output is set
  adc2.setAlertModeAndLimit_V(ADS1115_MAX_LIMIT, sensitivity, (sensitivity-16)); //Comparator values Hightreshold then LowTreshold 
  adc2.setAlertPol(ADS1115_ACT_HIGH); //ALRT polarity
  
  result = adc.getResult_mV(); 
  result2 = adc2.getResult_mV();
  if ((result > 32) && (result2 > 32)){
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

}

  

void config_loop(){
  
  
  result = adc.getResult_mV(); 
  result2 = adc2.getResult_mV();
  time2 = millis(); 

//exit after 10s and write sensitivity
  if ((time2-time1)>10000){
      blink(sensitivity);
      EEPROM.put(0,sensitivity);   //store sensitivity permanent when leaving
      adc.setAlertModeAndLimit_V(ADS1115_MAX_LIMIT, sensitivity, (sensitivity-16));
      adc2.setAlertModeAndLimit_V(ADS1115_MAX_LIMIT, sensitivity, (sensitivity-16));
      configMode = 0;
    }

//set paddle status
  if ((result > 32) && (leftNow == 0)) {
   leftNow = 1;
   sensitivity = sensitivity + 16;
   }
  if (result < 16) {
   leftNow = 0;
  }
  if ((result2 > 32) && (rightNow == 0)) {
   rightNow = 1;
   sensitivity = sensitivity - 16;
   }
   if (result2 < 16) {
   rightNow = 0;
  }
//set sensitivity
if (sensitivity != sensitivityNow)
  switch (sensitivity){
      case 0:
      sensitivity = 16;
      time1 = millis();
      break;
    case 16:
      sensitivityNow = sensitivity;
      blink(sensitivityNow);
      time1 = millis();
      break;
    case 32:
      sensitivityNow = sensitivity;
      blink(sensitivityNow);
      time1 = millis();
      break;
    case 48:
      sensitivityNow = sensitivity;
      blink(sensitivityNow);
      time1 = millis();
      break;
    case 64:
      sensitivityNow = sensitivity;
      blink(sensitivityNow);
      time1 = millis();
      break;
    case 80:
      sensitivityNow = sensitivity;
      blink(sensitivityNow);
      time1 = millis();
      break;
    case 96:
      sensitivityNow = sensitivity;
      blink(sensitivityNow);
      time1 = millis();
      break;
    case 112:
      sensitivity = 96;
      time1 = millis();
      break;
    default:
      sensitivity = 16;
      time1 = millis();
      break;
    }  
}



void blink(int amount){
      for(int x = 0; x < amount; x = x+16){
      digitalWrite(led, HIGH);
      delay(50);
      digitalWrite(led, LOW);
      delay(200);
      }
    
  }
