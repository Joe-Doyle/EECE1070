////////////////////////////////
//Joseph Doyle, UML Spring '19//
//EECE 1070-821 Lab           //
//lab5section3.ino            //
////////////////////////////////

#define tonePin 11

#define switch1 2 //set switch input pins
#define switch2 3
#define switch3 4

int i, freq, duration;  //declare ints

void setup() {
  Serial.begin(9600);
  pinMode(switch1,INPUT_PULLUP);  //use internal pullups for switches
  pinMode(switch2,INPUT_PULLUP);
  pinMode(switch3,INPUT_PULLUP);
}

void loop() {
  //if switch 1 is pulled low then alarm
  if(!switch1){
    Serial.println("Alarm...");
    for(i=0; i<4; i++){
      tone(tonePin, 1500, 500);
      delay(500);
      noTone(tonePin);
      delay(500);
    }
  }

  //if switch 2 is pulled low then robot
  if(!switch2){
    Serial.println("Robot...");
    tone(tonePin, 2800, 100);
    delay(100);
    tone(tonePin, 2400, 200);
    delay(200);
    tone(tonePin, 4200, 140);
    delay(100);
    tone(tonePin, 2000, 30);
    delay(30);
  }

  //if switch 3 is pulled low then hyperspace
  if(!switch3){
    Serial.println("Hyperspace...");
    for(duration=15; duration>0; duration--){
      for(freq=2000; freq<=2500; freq+=20){
        tone(tonePin, freq, duration);
        delay(duration);
      }
    }
  }
  delay(5); //for stability
}
