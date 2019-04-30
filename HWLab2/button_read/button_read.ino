////////////////////////////////
//Joseph Doyle, UML Spring '19//
//EECE 1070-821 Lab           //
//button_read.ino             //
////////////////////////////////

#define pushButton 2
int buttonState;

void setup() {
  Serial.begin(9600);
  pinMode(pushButton,INPUT);
}

void loop() {
  buttonState = digitalRead(pushButton);  //read the state of the button
  Serial.println(buttonState);  //print the state
  delay(5); //for stability
}
