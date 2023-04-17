import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
// Pre-array: AudioPlayer song0, song1, song2, song3, song4, song5, song6, song7;
int numberOfSongs = 6;
AudioPlayer[] songs = new AudioPlayer[numberOfSongs]; //Play List Data Structure
// Pre-array: AudioPlayer soundEffect0, soundEffect1;
int numberOfSoundEffects = 2;
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = int ( random( numberOfSongs-1 ) ); 
//
int time = 7000;
//
Boolean activateWindow=false;
//
void setup() {
  size(300, 300);
  loadMusic();
  //
  //Illsutrate Garbage Collection of Local Variable
  //println("Music Pathway is", musicPathway); //local variable doesn't exit outside of void loadMusic() {}
  //
  println("here", currentSong);
} //End setup
//
void draw() {
  if ( activateWindow == true ) background(0);
  //
} //End draw
//
void keyPressed() {
  //
  //Play sound effect when pressing a key, including delay
  soundEffects[0].play();
  soundEffects[0].rewind();
  delay(4000); //milliseconds read from draw() println() debugging
  //println( "KeyPressed:", soundEffects[0].length() );
  //
  keyPressedShortCuts();
  //
} //End keyPressed
//
void mousePressed() {
  if ( activateWindow==false ) activateWindow = true;
} //End mousePressed
//
//End MAIN Program
