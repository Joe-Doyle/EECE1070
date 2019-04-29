////////////////////////////////
//Joseph Doyle, UML Spring '19//
//EECE 1070-821 Lab           //
//lab5section2.ino            //
////////////////////////////////

void setup() {
  Serial.begin(9600);
}

void loop() {
  //run 5 times
  for(int i=0; i<5; i++){
    Serial.println("Tone sending...");
    //tone(pin, frequency, duration);
    tone(11, 2000, 1500); //play a tone for 1500ms
    delay(1500);
    Serial.println("Tone done");
  }
}
