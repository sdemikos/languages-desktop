
int LED = 9;
int brightness = 0;
int fadeAmount = 5;

void setup() {
  
  
 printMOde(LED, OUTPUT);
}

void loop() {
  analogWrite(LED, brightness);
  
  brightness = brightness + fadeAmount;
  
  if (brightness == 0 ||brightness== 255){
    
    fadeAmount = fadeAmount;
    
  }
  delay(3000);
  
}}
    