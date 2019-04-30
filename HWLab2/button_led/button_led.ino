////////////////////////////////
//Joseph Doyle, UML Spring '19//
//EECE 1070-821 Lab           //
//button_led.ino              //
////////////////////////////////

#define pushButton 2
#define led 12
int buttonState;

void setup() {
  Serial.begin(9600);
  pinMode(pushButton,INPUT);
}

void loop() {
  buttonState = digitalRead(pushButton);  //read the state of the button
  Serial.println(buttonState);  //print the state
  if(buttonState){  //check if button is pressed
     digitalWrite(led,HIGH); //if so, turn on led
  }
  else{
    digitalWrite(led,LOW);  //if not turn off led
  }
  delay(5); //for stability
}
