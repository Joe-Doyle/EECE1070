////////////////////////////////
//Joseph Doyle, UML Spring '19//
//EECE 1070-821 Lab           //
//lab1section3.ino            //
////////////////////////////////

#define led 12

void setup() {
  Serial.begin(9600);
  pinMode(led,OUTPUT);
}

void loop() {
  digitalWrite(led,HIGH);
  Serial.println("The LED connected to pin 12 is on!");
  delay(500);
  digitalWrite(led,LOW);
  Serial.println("The LED connected to pin 12 is off!");
  delay(500);
}
