////////////////////////////////
//Joseph Doyle, UML Spring '19//
//EECE 1070-821 Lab           //
//trafficLight.ino            //
////////////////////////////////

#define r1 2 //define red yellow and green pins
#define y1 3
#define g1 4
#define r2 5
#define y2 6
#define g2 7

//set time that lights will be green and yellow in ms
const int greenTime  = 35000;
const int yellowTime = 10000;

void setup() {
  pinMode(r1,OUTPUT); //set pinmodes to output
  pinMode(y1,OUTPUT);
  pinMode(g1,OUTPUT);
  pinMode(r2,OUTPUT);
  pinMode(y2,OUTPUT);
  pinMode(g2,OUTPUT);
}

void loop() {
  lightsOn(r1, g2);
  delay(greenTime);
  lightsOn(r1, y2);
  delay(yellowTime);
  
  lightsOn(g1, r2);
  delay(greenTime);
  lightsOn(y1, r2);
  delay(yellowTime);
}

//turns on two specified lights
void lightsOn(int light1, int light2){
  lightsOff(); //clear all lights
  digitalWrite(light1, HIGH); //turn on specified lights
  digitalWrite(light2, HIGH);
}

//turns off all the lights
void lightsOff(){
  digitalWrite(r1, LOW);
  digitalWrite(y1, LOW);
  digitalWrite(g1, LOW);
  digitalWrite(r2, LOW);
  digitalWrite(y2, LOW);
  digitalWrite(g2, LOW);
}
