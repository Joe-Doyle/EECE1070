////////////////////////////////
//Joseph Doyle, UML Spring '19//
//EECE 1070-821 Lab           //
//light_read.ino              //
////////////////////////////////

#define photopin 0

void setup() {
  Serial.begin(9600);
  Serial.println("Photo Resistor Reading");
}

void loop() {
  int n = analogRead(photopin); //read and print out the value
  Serial.println(n);
  delay(100);
}
