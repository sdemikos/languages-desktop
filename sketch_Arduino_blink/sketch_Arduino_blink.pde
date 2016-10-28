
 int LED = 13;
 int BUTTON = 4;
 
void setup(){
  
 pinMode(LED, OUTPUT);
  
}

void loop(){
  if (digitalRead (BUTTON) == HIGH){
  digitalWrite(LED, HIGH);}
  else{
  delay(1000);
  digitalWrite(LED, LOW);
  delay(1000);
  } 
}