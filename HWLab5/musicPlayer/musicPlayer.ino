///////////////////////////////////////////
//Joseph Doyle, UML Spring '19           //
//EECE 1070-821 Lab                      //
//musicPlayer.ino                        //
//modified from                          //      
//http://www.arduino.cc/en/Tutorial/Tone //
///////////////////////////////////////////

#include "pitches.h"

// notes in the melody:
int melody[] = {
  NOTE_A3, NOTE_G3, NOTE_F3, NOTE_G3, NOTE_A3, NOTE_A3, 
  NOTE_A3, NOTE_G3, NOTE_G3, NOTE_G3, NOTE_A3, NOTE_C3, 
  NOTE_C3, NOTE_A3, NOTE_G3, NOTE_F3, NOTE_G3, NOTE_A3, 
  NOTE_A3, NOTE_A3, NOTE_A3, NOTE_G3, NOTE_G3, NOTE_A3, 
  NOTE_G3, NOTE_F3
};

// note durations: 4 = quarter note, 8 = eighth note, etc.:
int noteDurations[] = {
  4,4,4,4,4,4,2,4,4,2,4,4,2,4,4,4,4,4,4,4,4,4,4,4,4,4
};

void setup() {
  // iterate over the notes of the melody:
  for (int thisNote = 0; thisNote < 8; thisNote++) {

    // to calculate the note duration, take one second divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    int noteDuration = 1000 / noteDurations[thisNote];
    tone(8, melody[thisNote], noteDuration);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes);
    // stop the tone playing:
    noTone(8);
  }
}

void loop() {
  // no need to repeat the melody.
}
