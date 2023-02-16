import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
AudioPlayer song0, song1, song2, song3, song4, song5;
AudioPlayer soundEffect0, soundEffect1;
//
Boolean activateWindow=false;
//
void setup() {
  size(300, 300);
  loadMusic();
  song0.loop(0);
  soundEffect0.loop(0);
} //End setup
//
void draw() {
  if ( activateWindow == true ) background(0);
  println ( soundEffect0.position(), soundEffect0.length() );
  println ("When does the sound stop? Indicates delay");
} //End draw
//
void keyPressed() {
  if ( key == CODED && keyCode == ESC ) {
    //
    //End Keypress
    //
    soundEffect0.play();
    soundEffect0.rewind();
    delay (1000);
    println( "keypressed:", soundEffect0. length() );
    //
    keyPressedShortCuts();
    //
    if (key=='Q'|| key=='Q') exit();
    if (key==CODED && key==ESC ) exit();
    soundEffect1.play();
  }
  } 
  void mousePressed() {
    soundEffect1.rewind ();
    if ( activateWindow==false ) activateWindow = true;
  } // End mousePressed;
  //End MAIN Program
