////////////////////////////////
//Joseph Doyle, UML Spring '19//
//EECE 1070-821 Lab           //
//lab1section5.ino            //
////////////////////////////////

#define ledRED    11  //define pins for both leds
#define ledGREEN  12

void setup() {
  Serial.begin(9600); //set up serial just cause even though it isn't used
  pinMode(ledRED,OUTPUT);   //set both pinModes
  pinMode(ledGREEN,OUTPUT);
}

void loop() {
  //turn both LEDs on and off
  digitalWrite(ledRED,HIGH);
  digitalWrite(ledGREEN,HIGH);
  delay(500);
  digitalWrite(ledRED,LOW);
  digitalWrite(ledGREEN,LOW);
  delay(500);

  //modified code for part two
  /*
  digitalWrite(ledRED,HIGH);
  digitalWrite(ledGREEN,LOW);
  delay(500);
  digitalWrite(ledRED,LOW);
  digitalWrite(ledGREEN,HIGH);
  delay(500);
  */
}
