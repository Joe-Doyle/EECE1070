////////////////////////////////
//Joseph Doyle, UML Spring '19//
//EECE 1070-821 Lab           //
//nightLight.ino              //
////////////////////////////////

#define led 2
#define input 0

const int thresh = 500; //threshold for darkness

void setup() {
  pinMode(led,OUTPUT);  //initialize led
  digitalWrite(led,LOW);
  Serial.begin(9600);   //initialize serial for debug
}

void loop() {
  //Serial.println(analogRead(input)); //print input value to serial
  //if the input value is less than the threshold, turn on the led
  if(analogRead(input) < thresh){
    digitalWrite(led,HIGH);
  }
  else{
    digitalWrite(led,LOW);
  }
  delay(5); //for stability
}
