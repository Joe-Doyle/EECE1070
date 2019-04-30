////////////////////////////////
//Joseph Doyle, UML Spring '19//
//EECE 1070-821 Lab           //
//blink_ten.ino               //
////////////////////////////////

#define led 12

void setup() {
  Serial.begin(9600);
  pinMode(led,OUTPUT);
}

void loop() {
  for(int count=10; count>0; count--){
    Serial.println(count);
    digitalWrite(led,HIGH);
    delay(500);
    digitalWrite(led,LOW);
    delay(500);
  }
  exit(0);
}
